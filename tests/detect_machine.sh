#!/bin/bash

# The authoritative copy of this script lives in the ufs-weather-model at:
# https://github.com/ufs-community/ufs-weather-model/blob/develop/tests/detect_machine.sh
# If any local modifications are made or new platform support added,
# please consider opening an issue and a PR to the ufs-weather-model
# so that this copy remains in sync with its authoritative source
#
# Thank you for your contribution

# If the MACHINE_ID variable is set, skip this script.
[[ -n ${MACHINE_ID:-} ]] && return

# First detect w/ hostname
case $(hostname -f) in

  adecflow0[12].acorn.wcoss2.ncep.noaa.gov)  MACHINE_ID=acorn ;; ### acorn
  alogin0[123].acorn.wcoss2.ncep.noaa.gov)    MACHINE_ID=acorn ;; ### acorn
  clogin0[1-9].cactus.wcoss2.ncep.noaa.gov)  MACHINE_ID=wcoss2 ;; ### cactus01-9
  clogin10.cactus.wcoss2.ncep.noaa.gov)      MACHINE_ID=wcoss2 ;; ### cactus10
  dlogin0[1-9].dogwood.wcoss2.ncep.noaa.gov) MACHINE_ID=wcoss2 ;; ### dogwood01-9
  dlogin10.dogwood.wcoss2.ncep.noaa.gov)     MACHINE_ID=wcoss2 ;; ### dogwood10

  gaea5[1-8])          MACHINE_ID=gaeac5 ;; ### gaea51-58
  gaea5[1-8].ncrc.gov) MACHINE_ID=gaeac5 ;; ### gaea51-58
  gaea6[1-8])          MACHINE_ID=gaeac6 ;; ### gaea61-68
  gaea6[1-8].ncrc.gov) MACHINE_ID=gaeac6 ;; ### gaea61-68

  hfe0[1-9]) MACHINE_ID=hera ;; ### hera01-09
  hfe1[0-2]) MACHINE_ID=hera ;; ### hera10-12
  hecflow01) MACHINE_ID=hera ;; ### heraecflow01

  s4-submit.ssec.wisc.edu) MACHINE_ID=s4 ;; ### s4

  fe[1-8]) MACHINE_ID=jet ;; ### jet01-8
  tfe[12]) MACHINE_ID=jet ;; ### tjet1-2

  Orion-login-[1-4].HPC.MsState.Edu) MACHINE_ID=orion ;; ### orion1-4

  [Hh]ercules-login-[1-4].[Hh][Pp][Cc].[Mm]s[Ss]tate.[Ee]du) MACHINE_ID=hercules ;; ### hercules1-4

  derecho1.hsn.de.hpc.ucar.edu) MACHINE_ID=derecho ;; ### derecho1
  derecho2.hsn.de.hpc.ucar.edu) MACHINE_ID=derecho ;; ### derecho2
  derecho3.hsn.de.hpc.ucar.edu) MACHINE_ID=derecho ;; ### derecho3
  derecho4.hsn.de.hpc.ucar.edu) MACHINE_ID=derecho ;; ### derecho4
  derecho5.hsn.de.hpc.ucar.edu) MACHINE_ID=derecho ;; ### derecho5
  derecho6.hsn.de.hpc.ucar.edu) MACHINE_ID=derecho ;; ### derecho6
  derecho7.hsn.de.hpc.ucar.edu) MACHINE_ID=derecho ;; ### derecho7
  derecho8.hsn.de.hpc.ucar.edu) MACHINE_ID=derecho ;; ### derecho8
  
  login[1-4].frontera.tacc.utexas.edu) MACHINE_ID=frontera ;; ### frontera1-4
  c*.frontera.tacc.utexas.edu) MACHINE_ID=frontera ;; ### frontera compute 

  discover3[1-5].prv.cube) MACHINE_ID=discover ;; ### discover31-35
  *) MACHINE_ID=UNKNOWN ;;  # Unknown platform
esac

if [[ ${MACHINE_ID} == "UNKNOWN" ]]; then 
   case ${PW_CSP:-} in
      "aws" | "google" | "azure") MACHINE_ID=noaacloud ;;
      *) PW_CSP="UNKNOWN"
   esac
fi

# Overwrite auto-detect with MACHINE if set
MACHINE_ID=${MACHINE:-${MACHINE_ID}}

# If MACHINE_ID is no longer UNKNNOWN, return it
if [[ "${MACHINE_ID}" != "UNKNOWN" ]]; then
  return
fi

# Try searching based on paths since hostname may not match on compute nodes
if [[ -d /lfs/h3 ]]; then
  # We are on NOAA Cactus or Dogwood
  MACHINE_ID=wcoss2
elif [[ -d /lfs/h1 && ! -d /lfs/h3 ]]; then
  # We are on NOAA TDS Acorn
  MACHINE_ID=acorn
elif [[ -d /mnt/lfs1 ]]; then
  # We are on NOAA Jet
  MACHINE_ID=jet
elif [[ -d /scratch1 ]]; then
  # We are on NOAA Hera
  MACHINE_ID=hera
elif [[ -d /work ]]; then
  # We are on MSU Orion or Hercules
  mount=$(findmnt -n -o SOURCE /home)   
  if [[ ${mount} =~ "hercules" ]]; then
    # We are on Hercules
    MACHINE_ID=hercules
  else
    MACHINE_ID=orion
  fi
elif [[ -d /gpfs/f5 && -d /ncrc ]]; then
  # We are on GAEA C5.
  MACHINE_ID=gaeac5
elif [[ -d /gpfs/f6 && -d /ncrc ]]; then
  # We are on GAEA C6.
  MACHINE_ID=gaeac6
elif [[ -d /data/prod ]]; then
  # We are on SSEC's S4
  MACHINE_ID=s4
else
  echo WARNING: UNKNOWN PLATFORM 1>&2
fi
