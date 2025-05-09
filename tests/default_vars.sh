#!/bin/bash
###############################################################################
#
# Export variables to the default values
#  - first common variables, then model specific ones
#  - different machines, different defaults:
#
###############################################################################

THRD=1

export INPES_atmaero=4
export JNPES_atmaero=8
export WPG_atmaero=6

export THRD_cpl_atmw=1
export INPES_cpl_atmw=3
export JNPES_cpl_atmw=8
export WPG_cpl_atmw=6
export WAV_tasks_cpl_atmw=30
export WAV_thrds_cpl_atmw=1

export THRD_cpl_c48=1
export INPES_cpl_c48=1
export JNPES_cpl_c48=1
export WPG_cpl_c48=6
export OCN_tasks_cpl_c48=4
export ICE_tasks_cpl_c48=4

export THRD_cpl_dflt=1
export INPES_cpl_dflt=3
export JNPES_cpl_dflt=8;
export WPG_cpl_dflt=6
export OCN_tasks_cpl_dflt=20
export ICE_tasks_cpl_dflt=10
export WAV_tasks_cpl_dflt=20

export THRD_cpl_thrd=2
export INPES_cpl_thrd=3
export JNPES_cpl_thrd=4
export WPG_cpl_thrd=6
export OCN_tasks_cpl_thrd=20
export OCN_thrds_cpl_thrd=1
export ICE_tasks_cpl_thrd=10
export ICE_thrds_cpl_thrd=1
export WAV_tasks_cpl_thrd=12
export WAV_thrds_cpl_thrd=2

export THRD_cpl_dcmp=1
export INPES_cpl_dcmp=4
export JNPES_cpl_dcmp=6
export WPG_cpl_dcmp=6
export OCN_tasks_cpl_dcmp=20
export ICE_tasks_cpl_dcmp=10
export WAV_tasks_cpl_dcmp=20

export THRD_cpl_mpi=1
export INPES_cpl_mpi=4
export JNPES_cpl_mpi=8
export WPG_cpl_mpi=6
export OCN_tasks_cpl_mpi=34
export ICE_tasks_cpl_mpi=20
export WAV_tasks_cpl_mpi=28

export THRD_cpl_bmrk=2
export INPES_cpl_bmrk=8
export JNPES_cpl_bmrk=8
export WPG_cpl_bmrk=48
export OCN_tasks_cpl_bmrk=120
export OCN_thrds_cpl_bmrk=1
export ICE_tasks_cpl_bmrk=48
export ICE_thrds_cpl_bmrk=1
export WAV_tasks_cpl_bmrk=120
export WAV_thrds_cpl_bmrk=2

export THRD_cpl_c192=2
export INPES_cpl_c192=6
export JNPES_cpl_c192=8
export WPG_cpl_c192=12
export OCN_tasks_cpl_c192=60
export ICE_tasks_cpl_c192=24
export WAV_tasks_cpl_c192=80

export ATM_compute_tasks_cdeps_100=12
export OCN_tasks_cdeps_100=16
export ICE_tasks_cdeps_100=12

export ATM_compute_tasks_cdeps_025=40
export OCN_tasks_cdeps_025=120
export ICE_tasks_cdeps_025=48

export INPES_aqm=33
export JNPES_aqm=8

export THRD_cpl_unstr=1
export INPES_cpl_unstr=3
export JNPES_cpl_unstr=8
export WPG_cpl_unstr=6
export OCN_tasks_cpl_unstr=20
export ICE_tasks_cpl_unstr=10
export WAV_tasks_cpl_unstr=60

export THRD_cpl_unstr_mpi=1
export INPES_cpl_unstr_mpi=4
export JNPES_cpl_unstr_mpi=8
export WPG_cpl_unstr_mpi=6
export OCN_tasks_cpl_unstr_mpi=34
export ICE_tasks_cpl_unstr_mpi=20
export WAV_tasks_cpl_unstr_mpi=50

export aqm_omp_num_threads=1
export atm_omp_num_threads=1
export chm_omp_num_threads=1
export ice_omp_num_threads=1
export lnd_omp_num_threads=1
export med_omp_num_threads=1
export ocn_omp_num_threads=1
export wav_omp_num_threads=1
export fbh_omp_num_threads=1

export histaux_enabled=.false.
export BMIC=.false.

if [[ ${MACHINE_ID} = wcoss2 || ${MACHINE_ID} = acorn ]]; then

  export TPN=128

  export INPES_dflt=3
  export JNPES_dflt=8
  export INPES_thrd=3
  export JNPES_thrd=4
  export INPES_c384=8
  export JNPES_c384=6
  export THRD_c384=2
  export INPES_c768=8
  export JNPES_c768=16
  export THRD_c768=2

  export THRD_cpl_atmw_gdas=2
  export INPES_cpl_atmw_gdas=6
  export JNPES_cpl_atmw_gdas=8
  export WPG_cpl_atmw_gdas=24
  export WAV_tasks_atmw_gdas=248

elif [[ ${MACHINE_ID} = orion ]]; then

  export TPN=40

  export INPES_dflt=3
  export JNPES_dflt=8
  export INPES_thrd=3
  export JNPES_thrd=4
  export INPES_c384=8
  export JNPES_c384=6
  export THRD_c384=2
  export INPES_c768=8
  export JNPES_c768=16
  export THRD_c768=2

  export THRD_cpl_atmw_gdas=2
  export INPES_cpl_atmw_gdas=6
  export JNPES_cpl_atmw_gdas=8
  export WPG_cpl_atmw_gdas=24
  export WAV_tasks_atmw_gdas=248

elif [[ ${MACHINE_ID} = hercules ]]; then

  export TPN=80

  export INPES_dflt=3
  export JNPES_dflt=8
  export INPES_thrd=3
  export JNPES_thrd=4
  export INPES_c384=8
  export JNPES_c384=6
  export THRD_c384=2
  export INPES_c768=8
  export JNPES_c768=16
  export THRD_c768=2

  export THRD_cpl_atmw_gdas=2
  export INPES_cpl_atmw_gdas=6
  export JNPES_cpl_atmw_gdas=8
  export WPG_cpl_atmw_gdas=24
  export WAV_tasks_atmw_gdas=248


elif [[ ${MACHINE_ID} = hera ]]; then

  export TPN=40

  export INPES_dflt=3
  export JNPES_dflt=8
  export INPES_thrd=3
  export JNPES_thrd=4
  export INPES_c384=6
  export JNPES_c384=8
  export THRD_c384=2
  export INPES_c768=8
  export JNPES_c768=16
  export THRD_c768=4

  export THRD_cpl_atmw_gdas=2
  export INPES_cpl_atmw_gdas=6
  export JNPES_cpl_atmw_gdas=8
  export WPG_cpl_atmw_gdas=24
  export WAV_tasks_atmw_gdas=248

elif [[ ${MACHINE_ID} = linux ]]; then

  export TPN=40

  export INPES_dflt=3
  export JNPES_dflt=8
  export INPES_thrd=3
  export JNPES_thrd=4

  export THRD_cpl_dflt=1
  export INPES_cpl_dflt=3
  export JNPES_cpl_dflt=8
  export WPG_cpl_dflt=6
  export OCN_tasks_cpl_dflt=20
  export ICE_tasks_cpl_dflt=10
  export WAV_tasks_cpl_dflt=20

  export THRD_cpl_thrd=2
  export INPES_cpl_thrd=3
  export JNPES_cpl_thrd=4
  export WPG_cpl_thrd=6
  export OCN_tasks_cpl_thrd=20
  export ICE_tasks_cpl_thrd=10
  export WAV_tasks_cpl_thrd=12

elif [[ ${MACHINE_ID} = jet ]]; then

  export TPN=24

  export INPES_dflt=3
  export JNPES_dflt=8
  export INPES_thrd=3
  export JNPES_thrd=4
  export INPES_c384=6
  export JNPES_c384=12
  export THRD_c384=1
  export INPES_c768=8
  export JNPES_c768=16
  export THRD_c768=2
  export WRTTASK_PER_GROUP_c384=84
  export WRTTASK_PER_GROUP_c384gdas=88

  export THRD_cpl_atmw_gdas=2
  export INPES_cpl_atmw_gdas=6
  export JNPES_cpl_atmw_gdas=8
  export WPG_cpl_atmw_gdas=24
  export WAV_tasks_atmw_gdas=240

  # run only in weekly test
  export THRD_cpl_bmrk=2
  export INPES_cpl_bmrk=16
  export JNPES_cpl_bmrk=16
  export WPG_cpl_bmrk=48
  export OCN_tasks_cpl_bmrk=100
  export ICE_tasks_cpl_bmrk=48
  export WAV_tasks_cpl_bmrk=100
  export WLCLK_cpl_bmrk=120

  # run only in weekly test
  export THRD_cpl_c192=2
  export INPES_cpl_c192=12
  export JNPES_cpl_c192=16
  export WPG_cpl_c192=24
  export OCN_tasks_cpl_c192=100
  export ICE_tasks_cpl_c192=48
  export WAV_tasks_cpl_c192=80
  export WLCLK_cpl_c192=120

elif [[ ${MACHINE_ID} = s4 ]]; then

  export TPN=32

  export INPES_dflt=3
  export JNPES_dflt=8
  export INPES_thrd=3
  export JNPES_thrd=4
  export INPES_c384=6
  export JNPES_c384=8
  export THRD_c384=2
  export INPES_c768=8
  export JNPES_c768=16
  export THRD_c768=1

  export THRD_cpl_atmw_gdas=2
  export INPES_cpl_atmw_gdas=6
  export JNPES_cpl_atmw_gdas=8
  export WPG_cpl_atmw_gdas=24
  export WAV_tasks_atmw_gdas=248

  export THRD_cpl_bmrk=2
  export INPES_cpl_bmrk=6;
  export JNPES_cpl_bmrk=8
  export WPG_cpl_bmrk=24
  export OCN_tasks_cpl_bmrk=120
  export ICE_tasks_cpl_bmrk=48
  export WAV_tasks_cpl_bmrk=80

elif [[ ${MACHINE_ID} = gaeac5 ]]; then

  export TPN=128

  export INPES_dflt=3
  export JNPES_dflt=8
  export INPES_thrd=3
  export JNPES_thrd=4
  export INPES_c384=6
  export JNPES_c384=8
  export THRD_c384=1
  export INPES_c768=8
  export JNPES_c768=16
  export THRD_c768=2

  export THRD_cpl_atmw_gdas=3
  export INPES_cpl_atmw_gdas=6
  export JNPES_cpl_atmw_gdas=8
  export WPG_cpl_atmw_gdas=24
  export WAV_tasks_atmw_gdas=264

elif [[ ${MACHINE_ID} = gaeac6 ]]; then

  export TPN=192

  export INPES_dflt=3
  export JNPES_dflt=8
  export INPES_thrd=3
  export JNPES_thrd=4
  export INPES_c384=6
  export JNPES_c384=8
  export THRD_c384=1
  export INPES_c768=8
  export JNPES_c768=16
  export THRD_c768=2

  export THRD_cpl_atmw_gdas=3
  export INPES_cpl_atmw_gdas=6
  export JNPES_cpl_atmw_gdas=8
  export WPG_cpl_atmw_gdas=24
  export WAV_tasks_atmw_gdas=264
elif [[ ${MACHINE_ID} = derecho ]]; then

  export TPN=128
  export INPES_dflt=3
  export JNPES_dflt=8
  export INPES_thrd=3
  export JNPES_thrd=4
  export INPES_c384=8
  export JNPES_c384=6
  export THRD_c384=2
  export INPES_c768=8
  export JNPES_c768=16
  export THRD_c768=2

  export THRD_cpl_atmw_gdas=2
  export INPES_cpl_atmw_gdas=6
  export JNPES_cpl_atmw_gdas=8
  export WPG_cpl_atmw_gdas=24
  export WAV_tasks_atmw_gdas=248

elif [[ ${MACHINE_ID} = noaacloud ]] ; then

    if [[ ${PW_CSP} == aws ]]; then
      export TPN=36
    elif [[ ${PW_CSP} == azure ]]; then
      export TPN=44
    elif [[ ${PW_CSP} == google ]]; then
      export TPN=30
    fi

    export INPES_dflt=3
    export JNPES_dflt=8
    export INPES_thrd=3
    export JNPES_thrd=4

    export INPES_c384=8
    export JNPES_c384=6
    export THRD_c384=2
    export INPES_c768=8
    export JNPES_c768=16
    export THRD_c768=2

    export THRD_cpl_dflt=1
    export INPES_cpl_dflt=3
    export JNPES_cpl_dflt=8
    export WPG_cpl_dflt=6
    export OCN_tasks_cpl_dflt=20
    export ICE_tasks_cpl_dflt=10
    export WAV_tasks_cpl_dflt=20

    export THRD_cpl_thrd=2
    export INPES_cpl_thrd=3
    export JNPES_cpl_thrd=4;
    export WPG_cpl_thrd=6
    export OCN_tasks_cpl_thrd=20
    export ICE_tasks_cpl_thrd=10
    export WAV_tasks_cpl_thrd=12

else

  echo "Unknown MACHINE_ID ${MACHINE_ID}"
  exit 1

fi

export WLCLK_dflt=30

export WLCLK=${WLCLK_dflt}
export CMP_DATAONLY=false

# Defaults for ufs.configure
export esmf_logkind="ESMF_LOGKIND_MULTI"
export ESMF_THREADING=true
export DumpFields="false"
export MED_history_n=1000000
export RESTART_FH=" "

export_fv3_v16 ()
{
# Add support for v16 test cases. This section
# will be removed once support for GFSv16 is
# officially depricated.

# Load in FV3 values
export_fv3

# Replace FV3 variable with old values as needed
export USE_MERRA2=.false.
export WRITE_NSFLIP=.false.

export DIAG_TABLE=diag_table_gfsv16
export FIELD_TABLE=field_table_gfsv16
export FV3_RUN=control_run.IN
export INPUT_NML=control.nml.IN
export CCPP_SUITE=FV3_GFS_v16

export DOGP_CLDOPTICS_LUT=.false.
export DOGP_LWSCAT=.false.
export IAER=111
export ICLIQ_SW=1
export IOVR=1
export IMP_PHYSICS=11
export DNATS=1
export DO_SAT_ADJ=.true.
export LHEATSTRG=.true.
export LSEASPRAY=.false.
export GWD_OPT=1
export DO_UGWP_V0=.false.
export DO_GSL_DRAG_SS=.false.
export SATMEDMF=.false.
export ISATMEDMF=0
export LRADAR=.true.
export LTAEROSOL=.true.

export LSM=1
export LANDICE=.true.
export IALB=1
export IEMS=1

export NSTF_NAME=2,1,1,0,5
export FNALBC="'global_snowfree_albedo.bosu.t126.384.190.rg.grb'"
export FNVETC="'global_vegtype.igbp.t126.384.190.rg.grb'"
export FNSOTC="'global_soiltype.statsgo.t126.384.190.rg.grb'"
export FNSOCC="''"
export FNSMCC="'global_soilmgldas.t126.384.190.grb'"
export FNSMCC_control="'global_soilmgldas.statsgo.t1534.3072.1536.grb'"
export FNMSKH_control="'global_slmask.t1534.3072.1536.grb'"
export FNABSC="'global_mxsnoalb.uariz.t126.384.190.rg.grb'"

export RF_CUTOFF=30.0
export FAST_TAU_W_SEC=0.0

export TILEDFIX=.false.
export DO_CA=.false.
export CA_SGS=.false.
}

export_fv3 ()
{
#Set defaults if ATMRES and DT_ATMOS are not set
export ATMRES=${ATMRES:-"C96"}
export DT_ATMOS=${DT_ATMOS:-"1800"}

#DT_INNER=(Time step)/2
export DT_INNER_c96=360
export DT_INNER_c192=300
export DT_INNER_c384=150
export DT_INNER_c768=75

if [[ ${DT_ATMOS} = 1800 ]]; then
  export default_dt_atmos=1
  export DT_INNER=${DT_INNER_c96}
else
  export default_dt_atmos=0
  export DT_INNER=${DT_ATMOS}
fi

# ufs.configure defaults
export UFS_CONFIGURE=ufs.configure.atm.IN
export MODEL_CONFIGURE=model_configure.IN
export atm_model=fv3

export POST_ITAG=post_itag_gfs
export POSTXCONFIG=postxconfig-NT-gfs.txt
export POSTXCONFIG_FH00=postxconfig-NT-gfs_FH00.txt

export FV3=true
export S2S=false
export HAFS=false
export AQM=false
export FIRE_BEHAVIOR=false
export DATM_CDEPS=false
export DOCN_CDEPS=false
export DICE_CDEPS=false
export CICE_PRESCRIBED=false
export CDEPS_INLINE=false
export POSTAPP='global'
export USE_MERRA2=.true.
export NESTED=.false.
export BLOCKSIZE=32
export CHKSUM_DEBUG=.false.
export DYCORE_ONLY=.false.

export IO_LAYOUT=1,1
export NTILES=6
export INPES=${INPES_dflt}
export JNPES=${JNPES_dflt}
export RESTART_INTERVAL=0
export QUILTING=.true.
export QUILTING_RESTART=.true.
export WRITE_GROUP=1
export WRTTASK_PER_GROUP=6
export ITASKS=1
export OUTPUT_HISTORY=.true.
export HISTORY_FILE_ON_NATIVE_GRID=.false.
export WRITE_DOPOST=.false.
export NUM_FILES=2
export FV3ATM_OUTPUT_DIR="./"
export FILENAME_BASE="'atm' 'sfc'"
export OUTPUT_GRID="'cubed_sphere_grid'"
export OUTPUT_FILE="'netcdf'"
export ZSTANDARD_LEVEL=0
export IDEFLATE=0
export QUANTIZE_NSD=0
export ICHUNK2D=0
export JCHUNK2D=0
export ICHUNK3D=0
export JCHUNK3D=0
export KCHUNK3D=0
export IMO=384
export JMO=190
export WRITE_NSFLIP=.true.

# New damping coefficients made the following
#   dynamic based on resolution
export N_SPLIT=5
export K_SPLIT=2
export TAU=0.0
export RF_CUTOFF=10.
export FV_SG_ADJ=450

export DZ_MIN=6
export MIN_SEAICE=0.15
export FRAC_GRID=.true.
export MIN_LAKEICE=0.15

#input file
export FV3_RUN=control_run.IN
export CCPP_SUITE=FV3_GFS_v17_p8
export FIELD_TABLE=field_table_thompson_noaero_tke
export DIAG_TABLE=diag_table_cpld.IN
export INPUT_NML=global_control.nml.IN

export DOMAINS_STACK_SIZE=3000000

# Coldstart/warmstart
#rt script for ICs
export MODEL_INITIALIZATION=false
#namelist variable
export WARM_START=.false.
export READ_INCREMENT=.false.
export RES_LATLON_DYNAMICS="''"
export ATM_IGNORE_RST_CKSUM=.false.
export INCREMENT_FILE_ON_NATIVE_GRID=.false.
export NGGPS_IC=.true.
export EXTERNAL_IC=.true.
export MAKE_NH=.true.
export MOUNTAIN=.false.
export NA_INIT=1
export DO_VORT_DAMP=.true.
export N_SPONGE=42
export NUDGE_QV=.true.
export NUDGE_DZ=.false.
export HYDROSTATIC=.false.
export KORD_MT=9
export KORD_WZ=9
export KORD_TR=9
export KORD_TM=-9
export PHYS_HYDROSTATIC=.false.
export USE_HYDRO_PRESSURE=.false.
export NWAT=6
export NORD=2
export D4_BG=0.12
export VTDM4=0.02
export DELT_MAX=0.002
export EXTERNAL_ETA=.true.
export GFS_PHIL=.false.
export NCEP_IC=.false.
export D_CON=1.
export HORD_MT=5
export HORD_VT=5
export HORD_TM=5
export HORD_DP=-5
export HORD_TR=8
export ADJUST_DRY_MASS=.false.
export DRY_MASS=98320.0
export CONSV_TE=1.
export PRINT_FREQ=6
export NO_DYCORE=.false.

export FILTERED_TERRAIN=.true.
export GFS_DWINDS=.true.

export USE_UFO=.true.
export PRE_RAD=.false.
export TTENDLIM=-999

# Radiation
export DO_RRTMGP=.false.
export DOGP_CLDOPTICS_LUT=.true.
export DOGP_LWSCAT=.true.
export DOGP_SGS_CNV=.true.
export USE_LW_JACOBIAN=.false.
export DAMP_LW_FLUXADJ=.false.
export RRTMGP_LW_PHYS_BLKSZ=2
export ICLOUD=0
export ICLOUD_BL=1
export IAER=1011
export ICLIQ_SW=2
export IOVR=3
export LFNC_K=-999
export LFNC_P0=-999
export PDFCLD=.false.
export FHSWR=3600.
export FHLWR=3600.

export ICO2=2
export ISUBC_SW=2
export ISUBC_LW=2
export ISOL=2
export LWHTR=.true.
export SWHTR=.true.
export CNVGWD=.true.
export CAL_PRE=.false.
export REDRAG=.true.
export DSPHEAT=.true.
export HYBEDMF=.false.

# Microphysics
export IMP_PHYSICS=8
export NWAT=6
# GFDL MP
export DNATS=0
export DO_SAT_ADJ=.false.
export LHEATSTRG=.false.
export LSEASPRAY=.true.
export LGFDLMPRAD=.false.
export EFFR_IN=.false.
# Thompson MP
export LRADAR=.false.
export LTAEROSOL=.false.
export EXT_DIAG_THOMPSON=.false.
export SEDI_SEMI=.true.
export DECFL=10
# NSSL MP
export NSSL_CCCN=0.6e9
export NSSL_ALPHAH=0.0
export NSSL_ALPHAHL=1.0
export NSSL_HAIL_ON=.false.
export NSSL_CCN_ON=.true.
export NSSL_INVERTCCN=.true.

# Smoke
export RRFS_SMOKE=.false.
export SMOKE_FORECAST=0
export RRFS_RESTART=NO
export SEAS_OPT=2

# GWD
export LDIAG_UGWP=.false.
export DO_UGWP=.false.
export DO_TOFD=.false.
export GWD_OPT=2
export DO_UGWP_V0=.true.
export DO_UGWP_V1_W_GSLDRAG=.false.
export DO_UGWP_V0_OROG_ONLY=.false.
export DO_GSL_DRAG_LS_BL=.false.
export DO_GSL_DRAG_SS=.true.
export DO_GWD_OPT_PSL=.false.
export PSL_GWD_DX_FACTOR=6.0
export DO_GSL_DRAG_TOFD=.false.
export DO_UGWP_V1=.false.
export DO_UGWP_V1_OROG_ONLY=.false.
export KNOB_UGWP_SOLVER=2
export KNOB_UGWP_SOURCE=1,1,0,0
export KNOB_UGWP_WVSPEC=1,25,25,25
export KNOB_UGWP_AZDIR=2,4,4,4
export KNOB_UGWP_STOCH=0,0,0,0
export KNOB_UGWP_EFFAC=1,1,1,1
export KNOB_UGWP_DOAXYZ=1
export KNOB_UGWP_DOHEAT=1
export LAUNCH_LEVEL=54
export KNOB_UGWP_DOKDIS=1
export KNOB_UGWP_NDX4LH=1
export KNOB_UGWP_VERSION=0
export KNOB_UGWP_PALAUNCH=275.0e2
export KNOB_UGWP_NSLOPE=1
export KNOB_UGWP_LZMAX=15.750e3
export KNOB_UGWP_LZMIN=0.75e3
export KNOB_UGWP_LZSTAR=2.0e3
export KNOB_UGWP_TAUMIN=0.25e-3
export KNOB_UGWP_TAUAMP=3.0e-3
export KNOB_UGWP_LHMET=200.0e3
export KNOB_UGWP_OROSOLV="'pss-1986'"

export KNOB_UGWP_TAUAMP=3.0e-3
export DO_UGWP_V0_NST_ONLY=.false.

# resolution dependent settings
export CDMBWD_c48='0.071,2.1,1.0,1.0'
export CDMBWD_c96='0.14,1.8,1.0,1.0'
export CDMBWD_c192='0.23,1.5,1.0,1.0'
export CDMBWD_c384='1.1,0.72,1.0,1.0'
export CDMBWD_c768='4.0,0.15,1.0,1.0'

# set default
export CDMBWD=${CDMBWD_c96}

if [[ ${default_dt_atmos} = 1 ]]; then
  export DT_INNER=${DT_INNER_c96}
else
  export DT_INNER=${DT_ATMOS}
fi

export ISATMEDMF=1
export TRANS_TRAC=.true.

# PBL
export SATMEDMF=.true.
export HYBEDMF=.false.
export SHINHONG=.false.
export DO_YSU=.false.
export DO_MYNNEDMF=.false.
export HURR_PBL=.false.
export MONINQ_FAC=1.0
export SFCLAY_COMPUTE_FLUX=.false.

# Shallow/deep convection
export DO_DEEP=.true.
export SHAL_CNV=.true.
export IMFSHALCNV=2
export HWRF_SAMFSHAL=.false.
export IMFDEEPCNV=2
export HWRF_SAMFDEEP=.false.
export RAS=.false.
export RANDOM_CLDS=.false.
export CNVCLD=.true.
export XR_CNVCLD=.false.
export PROGSIGMA=.false.
export BETASCU=8.0
export BETAMCU=1.0
export BETADCU=2.0

# Aerosol convective scavenging
export FSCAV_AERO='"*:0.3","so2:0.0","msa:0.0","dms:0.0","nh3:0.4","nh4:0.6","bc1:0.6","bc2:0.6","oc1:0.4","oc2:0.4","dust1:0.6","dust2:0.6","dust3:0.6","dust4:0.6","dust5:0.6","seas1:0.5","seas2:0.5","seas3:0.5","seas4:0.5","seas5:0.5"'

# SFC
export DO_MYJSFC=.false.
export DO_MYNNSFCLAY=.false.
export BL_MYNN_EDMF=1
export BL_MYNN_TKEADVECT=.true.
export BL_MYNN_EDMF_MOM=1

# LSM
export PRSLRD0=0.
export IVEGSRC=1
export ISOT=1
export LSOIL=4
export LSM=2
export LSOIL_LSM=4
export LANDICE=.false.
export KICE=2
export IALB=2
export IEMS=2
export IOPT_DVEG=4
export IOPT_CRS=2
export IOPT_BTR=1
export IOPT_RUN=1
export IOPT_RAD=3
export IOPT_ALB=1
export IOPT_STC=3
export IOPT_FRZ=1
export IOPT_INF=1
export IOPT_SFC=3
export IOPT_TRS=2
export IOPT_DIAG=2
export IOPT_SNF=4
export IOPT_TBOT=2
export DEBUG=.false.
export NST_ANL=.true.
export PSAUTCO=0.0008,0.0005
export PRAUTCO=0.00015,0.00015
export EFFR_IN=.true.
export ACTIVE_GASES="'h2o_co2_o3_n2o_ch4_o2'"
export NGASES=6
export LW_FILE_GAS="'rrtmgp-data-lw-g128-210809.nc'"
export LW_FILE_CLOUDS="'rrtmgp-cloud-optics-coeffs-lw.nc'"
export SW_FILE_GAS="'rrtmgp-data-sw-g112-210809.nc'"
export SW_FILE_CLOUDS="'rrtmgp-cloud-optics-coeffs-sw.nc'"
export RRTMGP_NGPTSSW=112
export RRTMGP_NGPTSLW=128
export RRTMGP_NBANDSLW=16
export RRTMGP_NBANDSSW=14

export D2_BG_K1=0.20
export D2_BG_K2=0.04
export PSM_BC=1

export DDDMP=0.1

# Ozone / stratospheric H2O
export OZ_PHYS_OLD=.true.
export OZ_PHYS_NEW=.false.

export H2O_PHYS=.false.

# Lake models
export LKM=0 # 0=no lake, 1=run lake model, 2=run both lake and nsst on lake points
export IOPT_LAKE=2 # 1=flake, 2=clm lake
export LAKEFRAC_THRESHOLD=0.0 # lake fraction must be higher for lake model to run it
export LAKEDEPTH_THRESHOLD=1.0 # lake must be deeper (in meters) for a lake model to run it
export FRAC_ICE=.true. # should be false for flake, true for clm_lake

# Tiled Fix files
export TILEDFIX=.true.

export CPL=.false.
export CPLCHM=.false.
export CPLFLX=.false.
export CPLICE=.false.
export CPLWAV=.false.
export CPLWAV2ATM=.false.
export CPLLND=.false.
export CPLLND2ATM=.false.
export USE_MED_FLUX=.false.
export DAYS=1
export NPX=97
export NPY=97
export NPZ=64
export NPZP=65
export NSTF_NAME=2,1,0,0,0
export OUTPUT_FH="12 -1"
export FHZERO=6
export FSICL=0
export FSICS=0

# Dynamical core
export FV_CORE_TAU=0.
export FAST_TAU_W_SEC=0.2
export DRY_MASS=98320.0

export ENS_NUM=1
export SYEAR=2016
export SMONTH=10
export SDAY=03
export SHOUR=00
export SECS=$(( SHOUR*3600 ))
export FHMAX=$(( DAYS*24 ))
export FHCYC=24
export FHROT=0
export LDIAG3D=.false.
export QDIAG3D=.false.
export PRINT_DIFF_PGR=.false.
export MAX_OUTPUT_FIELDS=310
export UPDATE_FULL_OMEGA=.false.

# Stochastic physics
export LCNORM=.false.
export PERT_MP=.false.
export PERT_RADTEND=.false.
export PERT_CLDS=.false.

export STOCHINI=.false.
export DO_SPPT=.false.
export DO_SHUM=.false.
export DO_SKEB=.false.
export LNDP_TYPE=0
export N_VAR_LNDP=0
export SKEB=-999.
export SPPT=-999.
export SHUM=-999.
export LNDP_VAR_LIST="'XXX'"
export LNDP_PRT_LIST=-999
export LNDP_MODEL_TYPE=0
export LNDP_TAU=21600,
export LNDP_LSCALE=500000,
export ISEED_LNDP=2010,
export ISEED_SKEB=0
export SKEB_TAU=21600,
export SKEB_LSCALE=500000,
export SKEBNORM=1,
export SKEB_NPASS=30,
export SKEB_VDOF=5,
export ISEED_SHUM=1,
export SHUM_TAU=21600,
export SHUM_LSCALE=500000,
export ISEED_SPPT=20210325000103,20210325000104,20210325000105,20210325000106,20210325000107
export SPPT_TAU=2.16E4,2.592E5,2.592E6,7.776E6,3.1536E7
export SPPT_LSCALE=500.E3,1000.E3,2000.E3,2000.E3,2000.E3
export SPPT_LOGIT=.true.,
export SPPT_SFCLIMIT=.true.,
export USE_ZMTNBLCK=.true.
export PBL_TAPER=0,0,0,0.125,0.25,0.5,0.75
export OCNSPPT=0.8,0.4,0.2,0.08,0.04
export OCNSPPT_LSCALE=500.E3,1000.E3,2000.E3,2000.E3,2000.E3
export OCNSPPT_TAU=2.16E4,2.592E5,2.592E6,7.776E6,3.1536E7
export ISEED_OCNSPPT=20210325000108,20210325000109,20210325000110,20210325000111,20210325000112
export EPBL=0.8,0.4,0.2,0.08,0.04
export EPBL_LSCALE=500.E3,1000.E3,2000.E3,2000.E3,2000.E3
export EPBL_TAU=2.16E4,2.592E5,2.592E6,7.776E6,3.1536E7
export ISEED_EPBL=20210325000113,20210325000114,20210325000115,20210325000116,20210325000117

#IAU
export IAU_INC_FILES="''"
export IAU_DELTHRS=0
export IAUFHRS=-1
export IAU_OFFSET=0
export IAU_FILTER_INCREMENTS=.false.

export FH_DFI_RADAR='-2e10'

#Cellular automata
export DO_CA=.true.
export CA_SGS=.true.
export CA_GLOBAL=.false.
export NCA=1
export NCELLS=5
export NLIVES=12
export NTHRESH=18
export NSEED=1
export NFRACSEED=0.5
export CA_TRIGGER=.true.
export NSPINUP=1
export ISEED_CA=12345

#waves
export WW3_RSTDTHR=12
WW3_DT_2_RST="$(printf "%02d" $(( WW3_RSTDTHR*3600 )))"
export WW3_DT_2_RST
export WW3_OUTDTHR=1
WW3_DTFLD="$(printf "%02d" $(( WW3_OUTDTHR*3600 )))"
export WW3_DTFLD
WW3_DTPNT="$(printf "%02d" $(( WW3_OUTDTHR*3600 )))"
export WW3_GRD_OUTDIR='./'
export WW3_PNT_OUTDIR='./'
export WW3_RST_OUTDIR='./'
export WW3_DTPNT
export DTRST=0
export RSTTYPE=T
export GOFILETYPE=1
export POFILETYPE=1
export WW3_OUTPARS="WND HS FP DP PHS PTP PDIR"
export CPLILINE='$'
export ICELINE='$'
export WINDLINE='$'
export CURRLINE='$'
export NFGRIDS=0
export NMGRIDS=1
export WW3GRIDLINE="'glo_1deg'  'no' 'no' 'CPL:native' 'no' 'no' 'no' 'no' 'no' 'no'   1  1  0.00 1.00  F"
export FUNIPNT=T
export IOSRV=1
export FPNTPROC=T
export FGRDPROC=T
export UNIPOINTS='points'
export FLAGMASKCOMP=' F'
export FLAGMASKOUT=' F'
RUN_BEG="${SYEAR}${SMONTH}${SDAY} $(printf "%02d" $(( SHOUR  )))0000"
export RUN_BEG
RUN_END="2100${SMONTH}${SDAY} $(printf "%02d" $(( SHOUR  )))0000"
export RUN_END
export OUT_BEG=${RUN_BEG}
export OUT_END=${RUN_END}
export RST_BEG=${RUN_BEG}
export RST_2_BEG=${RUN_BEG}
export RST_END=${RUN_END}
export RST_2_END=${RUN_END}
export WW3_WLEV='F'
export WW3_CUR='F'
export WW3_ICE='F'
export WW3_IC1='F'
export WW3_IC5='F'
# ATMW
export WW3_MULTIGRID=true
export WW3_MODDEF=mod_def.glo_1deg
export MESH_WAV=mesh.glo_1deg.nc
export WW3_RSTFLDS=" "
# ATMA
export AOD_FRQ=060000

# Regional
export WRITE_RESTART_WITH_BCS=.false.

# Diagnostics
export PRINT_DIFF_PGR=.false.

# Coupling
export coupling_interval_fast_sec=0
export CHOUR=06
export MOM6_OUTPUT_DIR=./MOM6_OUTPUT
export MOM6_RESTART_DIR=./RESTART/
export MOM6_RESTART_SETTING=n

# Following not used for standalone
export USE_CICE_ALB=.false.

# GFDL Cloud Microphysics
export FTSFS=90
export REIFLAG=2

# NAM sfc
export FNGLAC="'global_glacier.2x2.grb'"
export FNMXIC="'global_maxice.2x2.grb'"
export FNTSFC="'RTGSST.1982.2012.monthly.clim.grb'"
export FNSNOC="'global_snoclim.1.875.grb'"
export FNZORC="'igbp'"
export FNAISC="'IMS-NIC.blended.ice.monthly.clim.grb'"
export LDEBUG=.false.

# Land IAU defaults
export DO_LAND_IAU=.false.
export LAND_IAU_FHRS=3,6,9
export LAND_IAU_DELHRS=6
export LAND_IAU_INC_FILES="'sfc_inc',''"
export LSOIL_INCR=3
export LAND_IAU_FILTER_INC=.false.
export LAND_IAU_UPD_STC=.true.
export LAND_IAU_UPD_SLC=.true.
export LAND_IAU_DP_STCSMC_ADJ=.true.
export LAND_IAU_MIN_T_INC=0.0001
}

# Add section for tiled grid namelist
export_tiled() {
  export FNSMCC_control="'global_soilmgldas.statsgo.t1534.3072.1536.grb'"
  export FNMSKH_control="'global_slmask.t1534.3072.1536.grb'"
  export FNALBC="'${ATMRES}.snowfree_albedo.tileX.nc'"
  export FNALBC2="'${ATMRES}.facsf.tileX.nc'"
  export FNTG3C="'${ATMRES}.substrate_temperature.tileX.nc'"
  export FNVEGC="'${ATMRES}.vegetation_greenness.tileX.nc'"
  export FNVETC="'${ATMRES}.vegetation_type.tileX.nc'"
  export FNSOTC="'${ATMRES}.soil_type.tileX.nc'"
  export FNSOCC="'${ATMRES}.soil_color.tileX.nc'"
  export FNSMCC=${FNSMCC_control}
  export FNMSKH=${FNMSKH_control}
  export FNVMNC="'${ATMRES}.vegetation_greenness.tileX.nc'"
  export FNVMXC="'${ATMRES}.vegetation_greenness.tileX.nc'"
  export FNSLPC="'${ATMRES}.slope_type.tileX.nc'"
  export FNABSC="'${ATMRES}.maximum_snow_albedo.tileX.nc'"
  export LANDICE=".false."
}

export_ugwpv1() {
  export DO_UGWP_V1=.true.
  export DO_UGWP_V0=.false.
  export GWD_OPT=2
  export KNOB_UGWP_VERSION=1
  export KNOB_UGWP_NSLOPE=1
  export DO_GSL_DRAG_LS_BL=.true.
  export DO_GSL_DRAG_SS=.true.
  export DO_GSL_DRAG_TOFD=.true.
  export DO_UGWP_V1_OROG_ONLY=.false.
  export DO_UGWP_V0_NST_ONLY=.false.
  export LDIAG_UGWP=.false.
  export KNOB_UGWP_DOKDIS=2
  export KNOB_UGWP_NDX4LH=4

  # Add updated damping and timestep variables
  case "${ATMRES}" in
    "C48")
      if [[ ${default_dt_atmos} = 1 ]]; then export DT_ATMOS=720; fi
      export XR_CNVCLD=.false.
      export CDMBGWD="0.071,2.1,1.0,1.0"
      export CDMBGWD_GSL="40.0,1.77,1.0,1.0"
      export KNOB_UGWP_TAUAMP=6.0e-3
      export K_SPLIT=1
      export N_SPLIT=4
      export TAU=10.0
      export RF_CUTOFF=100.0
      export FV_SG_ADJ=3600
      ;;
    "C96")
      if [[ ${default_dt_atmos} = 1 ]]; then export DT_ATMOS=720; fi
      export XR_CNVCLD=.false.
      export CDMBGWD="0.14,1.8,1.0,1.0"
      export CDMBGWD_GSL="20.0,2.5,1.0,1.0"
      export KNOB_UGWP_TAUAMP=3.0e-3
      export K_SPLIT=1
      export N_SPLIT=4
      export TAU=8.0
      export RF_CUTOFF=100.0
      export FV_SG_ADJ=1800
      ;;
    "C192")
      if [[ ${default_dt_atmos} = 1 ]]; then export DT_ATMOS=600; fi
      export XR_CNVCLD=.true.
      export CDMBGWD="0.23,1.5,1.0,1.0"
      export CDMBGWD_GSL="5.0,5.0,1.0,1.0"
      export KNOB_UGWP_TAUAMP=1.5e-3
      export K_SPLIT=2
      export N_SPLIT=5
      export TAU=6.0
      export RF_CUTOFF=100.0
      export FV_SG_ADJ=1800
      ;;
    "C384")
      if [[ ${default_dt_atmos} = 1 ]]; then export DT_ATMOS=300; fi
      export XR_CNVCLD=.true.
      export CDMBGWD="1.1,0.72,1.0,1.0"
      export CDMBGWD_GSL="5.0,5.0,1.0,1.0"
      export KNOB_UGWP_TAUAMP=0.8e-3
      export K_SPLIT=2
      export N_SPLIT=4
      export TAU=4.0
      export RF_CUTOFF=100.0
      export FV_SG_ADJ=900
      ;;
    "C768")
      if [[ ${default_dt_atmos} = 1 ]]; then export DT_ATMOS=150; fi
      export XR_CNVCLD=.true.
      export CDMBGWD="4.0,0.15,1.0,1.0"
      export CDMBGWD_GSL="2.5,7.5,1.0,1.0"
      export KNOB_UGWP_TAUAMP=0.5e-3
      export K_SPLIT=2
      export N_SPLIT=4
      export TAU=3.0
      export RF_CUTOFF=100.0
      export FV_SG_ADJ=450
      ;;
    "C1152")
      if [[ ${default_dt_atmos} = 1 ]]; then export DT_ATMOS=150; fi
      export XR_CNVCLD=.true.
      export CDMBGWD="4.0,0.10,1.0,1.0"
      export CDMBGWD_GSL="1.67,8.8,1.0,1.0"
      export KNOB_UGWP_TAUAMP=0.35e-3
      export K_SPLIT=2
      export N_SPLIT=6
      export TAU=2.5
      export RF_CUTOFF=100.0
      export FV_SG_ADJ=450
      ;;
    "C3072")
      if [[ ${default_dt_atmos} = 1 ]]; then export DT_ATMOS=90; fi
      export XR_CNVCLD=.true.
      export CDMBGWD="4.0,0.05,1.0,1.0"
      export CDMBGWD_GSL="0.625,14.1,1.0,1.0"
      export KNOB_UGWP_TAUAMP=0.13e-3
      export K_SPLIT=4
      export N_SPLIT=5
      export TAU=0.5
      export RF_CUTOFF=100.0
      export FV_SG_ADJ=300
      ;;
    *)
      echo Invalid model resolution: "${ATMRES}". Please update specified variable ATMRES.
      exit 1
      ;;
  esac

  if [[ ${DO_GSL_DRAG_SS} = .true. ]]; then export CDMBGWD=${CDMBGWD_GSL}; fi
  if [[ ${SEDI_SEMI} = .false. ]]; then
    export DT_INNER=$((DT_ATMOS/2))
  else
    export DT_INNER=${DT_ATMOS}
  fi
  export default_dt_atmos=0
}


# Defaults for the CICE6 model namelist, mx100
export_cice6() {
  SECS=$((SHOUR*3600))
  export SECS
  export DT_CICE=${DT_ATMOS}
  export CICE_NPT=999
  export CICE_RUNTYPE=initial
  export CICE_ICE_IC='cice_model.res.nc'
  export CICE_RUNID=unknown
  export CICE_USE_RESTART_TIME=.false.
  export CICE_RESTART_DIR=./RESTART/
  export CICE_RESTART_FILE=iced
  # CICE6 warmstarts
  export OCNICE_WARMSTART=.false.

  export CICE_RESTART_FORMAT='pnetcdf2'
  export CICE_RESTART_IOTASKS=-99
  export CICE_RESTART_REARR='box'
  export CICE_RESTART_ROOT=-99
  export CICE_RESTART_STRIDE=-99
  export CICE_RESTART_CHUNK=0,0
  export CICE_RESTART_DEFLATE=0

  export CICE_HISTORY_FORMAT='pnetcdf2'
  export CICE_HISTORY_IOTASKS=-99
  export CICE_HISTORY_REARR='box'
  export CICE_HISTORY_ROOT=-99
  export CICE_HISTORY_STRIDE=-99
  export CICE_HISTORY_CHUNK=0,0
  export CICE_HISTORY_DEFLATE=0
  export CICE_HISTORY_PREC=4

  export CICE_DUMPFREQ=d
  export CICE_DUMPFREQ_N=1000
  CICE_DIAGFREQ=$(( (FHMAX*3600)/DT_CICE ))
  export CICE_DIAGFREQ
  export CICE_HISTFREQ_N="0, 0, 6, 0, 0"
  export CICE_hist_suffix="'x','x','x','x','x'"
  export CICE_HIST_AVG=.true.
  export CICE_HISTORY_DIR=./history/
  export CICE_INCOND_DIR=./history/
  export CICE_GRID=grid_cice_NEMS_mx${OCNRES}.nc
  export CICE_MASK=kmtu_cice_NEMS_mx${OCNRES}.nc
  export CICE_GRIDATM=A
  export CICE_GRIDOCN=A
  export CICE_GRIDICE=B
  export CICE_TR_POND_LVL=.true.
  export CICE_RESTART_POND_LVL=.false.
  # setting to true will allow Frazil FW and Salt to be included in fluxes sent to ocean
  export CICE_FRAZIL_FWSALT=.true.
  export CICE_KTHERM=2
  export CICE_TFREEZE_OPTION=mushy
  # SlenderX2
  export CICE_NPROC=${ICE_tasks}
  np2=$((CICE_NPROC/2))
  CICE_BLCKX=$((NX_GLB/np2))
  CICE_BLCKY=$((NY_GLB/2))
  export np2
  export CICE_BLCKX
  export CICE_BLCKY
  export CICE_DECOMP=slenderX2

  #ds2s
  export MESH_DICE=none
  export stream_files_dice=none
  export CICE_PRESCRIBED=false
  export DICE_CDEPS=false
}

# Defaults for the MOM6 model namelist, mx100
export_mom6() {
  export DT_DYNAM_MOM6=1800
  export DT_THERM_MOM6=3600
  export MOM6_INPUT=MOM_input_100.IN
  export MOM6_OUTPUT_DIR=./MOM6_OUTPUT
  export MOM6_OUTPUT_FH=6
  export MOM6_RESTART_DIR=./RESTART/
  export MOM6_RESTART_SETTING=n
  export MOM6_RIVER_RUNOFF=False
  export MOM6_FRUNOFF=''
  export MOM6_CHLCLIM=seawifs_1998-2006_smoothed_2X.nc
  export MOM6_USE_LI2016=True
  export MOM6_TOPOEDITS=''
  # since CPL_SLOW is set to DT_THERM, this should be always be false
  export MOM6_THERMO_SPAN=False
  export MOM6_USE_WAVES=True
  export MOM6_ALLOW_LANDMASK_CHANGES=False
  # MOM6 diag
  export MOM6_DIAG_COORD_DEF_Z_FILE=interpolate_zgrid_40L.nc
  export MOM6_DIAG_MISVAL='-1e34'
  # MOM6 IAU
  export ODA_INCUPD=False
  export ODA_INCUPD_NHOURS=6
  export ODA_TEMPINC_VAR="'pt_inc'"
  export ODA_SALTINC_VAR="'s_inc'"
  export ODA_THK_VAR="'h_fg'"
  export ODA_INCUPD_UV=False
  export ODA_UINC_VAR="'u_inc'"
  export ODA_VINC_VAR="'v_inc'"
  # MOM6 stochastics
  export DO_OCN_SPPT=False
  export PERT_EPBL=False
  export OCN_SPPT=-999.
  export EPBL=-999.
  # MOM6 warmstarts
  export OCNICE_WARMSTART=.false.
  export MOM6_INIT_FROM_Z=True
  export MOM6_INIT_UV="zero"
  export MOM6_WARMSTART_FILE="none"
}

# Defaults for the WW3 global model
export_ww3() {
  export WW3_DOMAIN=mx${OCNRES}
  export WW3_MODDEF=mod_def.mx${OCNRES}
  export WW3_RSTDTHR=3
  WW3_DT_2_RST="$(printf "%02d" $(( WW3_RSTDTHR*3600 )) )"
  export WW3_DT_2_RST
  export WW3_OUTDTHR=3
  WW3_DTFLD="$(printf "%02d" $(( WW3_OUTDTHR*3600 )) )"
  WW3_DTPNT="$(printf "%02d" $(( WW3_OUTDTHR*3600 )) )"
  export WW3_DTFLD
  export WW3_DTPNT
  export WW3_WLEV='F'
  export WW3_CUR='C'
  export WW3_ICE='C'
  export WW3_IC1='F'
  export WW3_IC5='F'
  export WW3_user_histname='false'
  export WW3_historync='false'
  export WW3_restartnc='true'
  export WW3_restart_from_binary='false'
  # For default ufs_configure (fast loop), no added fields reqd
  export WW3_RSTFLDS=" "
  # For either history_nc or restart_nc true
  export WW3_PIO_FORMAT='pnetcdf'
  export WW3_PIO_STRIDE=4
  export WW3_PIO_IOTASKS=-99
  export WW3_PIO_REARR='box'
  export WW3_PIO_ROOT=-99
}

export_fire_behavior() {
  export fbh_model=fire_behavior
  export FIRE_BEHAVIOR=true
  export FIRE_NML=namelist.fire.IN
  export CPLFIRE=false
  export DT_FIRE=${DT_ATMOS}
  OUTPUT_FS="$(printf "%02d" $(( OUTPUT_FH*3600 )))"
  export OUTPUT_FS
  export fire_atm_feedback=1.0
  export fire_lsm_zcoupling=false
  export fire_lsm_zcoupling_ref=60.0
  export fire_num_ignitions=1
  export fire_print_msg=0
  export fire_upwinding=9
  export fire_viscosity=0.4
  export fire_wind_height=5.0
}


# Defaults for the coupled 5-component
export_cmeps() {
  export UFS_CONFIGURE=ufs.configure.s2swa_fast.IN
  export med_model=cmeps
  export atm_model=fv3
  export chm_model=gocart
  export ocn_model=mom6
  export ice_model=cice6
  export wav_model=ww3
  export lnd_model=noahmp
  export coupling_interval_slow_sec=${DT_THERM_MOM6}
  export coupling_interval_fast_sec=${DT_ATMOS}
  export MESH_OCN=mesh.mx${OCNRES}.nc
  export MESH_ICE=mesh.mx${OCNRES}.nc
  export MESH_WAV=mesh.${WW3_DOMAIN}.nc
  export CPLMODE=ufs.frac
  export CMEPS_PIO_FORMAT='pnetcdf'
  export CMEPS_PIO_STRIDE=4
  export CMEPS_PIO_IOTASKS=-99
  export CMEPS_PIO_REARR='box'
  export CMEPS_PIO_ROOT=-99
  export RUNTYPE=startup
  export RESTART_N=${FHMAX}
  export RESTART_FH=" "
  export CMEPS_RESTART_DIR=./RESTART/
  export cap_dbug_flag=0
  export WRITE_ENDOFRUN_RESTART=.false.
  # MOM6 attributes
  export use_coldstart=false
  export use_mommesh=true
  # CICE attributes
  export eps_imesh=1.0e-1
  # mediator AO flux
  export flux_convergence=0.0
  export flux_iteration=2
  export flux_scheme=0
  # mediator ocean albedo
  export ocean_albedo_limit=0.06
  export use_mean_albedos=.false.
  # WW3 (used in run_test only)
  export WW3_MULTIGRID=false
}

export_cpl ()
{
export FV3=true
export S2S=true
export HAFS=false
export AQM=false
export FIRE_BEHAVIOR=false
export DATM_CDEPS=false
export DOCN_CDEPS=false
export DICE_CDEPS=false
export CICE_PRESCRIBED=false
export CDEPS_INLINE=false
export DAYS=1

#model configure
export MODEL_CONFIGURE=model_configure.IN
export SYEAR=2021
export SMONTH=03
export SDAY=22
export SHOUR=06
export CHOUR=06
export FHMAX=24
export FHROT=0
export QUILTING_RESTART=.false.
export WRTTASK_PER_GROUP=${WPG_cpl_dflt}
export WRITE_NSFLIP=.true.
export OUTPUT_FH='6 -1'

# default atm/ocn/ice resolution
if [[ ${default_dt_atmos} = 1 ]]; then
    #If default DT_ATMOS is being used, set to 720 for RTs
    export DT_ATMOS=720
    export DT_INNER=${DT_ATMOS}
fi
if [[ -z ${OCNRES+x} || -z ${OCNRES} ]]; then
    export OCNRES=100
fi
if [[ -z ${ICERES+x} || -z ${ICERES} ]]; then
    export ICERES=1.00
fi
export NX_GLB=360
export NY_GLB=320
export NPZ=127
export NPZP=128

# Use updated omega calculations if
#   hydrostatic is set to false
if [[ "${HYDROSTATIC}" == .false. ]]; then
  export UPDATE_FULL_OMEGA=.true.
fi

# default resources
export DOMAINS_STACK_SIZE=8000000
export INPES=${INPES_cpl_dflt}
export JNPES=${JNPES_cpl_dflt}
export THRD=${THRD_cpl_dflt}
export OCN_tasks=${OCN_tasks_cpl_dflt}
export ICE_tasks=${ICE_tasks_cpl_dflt}
export WAV_tasks=${WAV_tasks_cpl_dflt}

# Set tiled file defaults
export_tiled

# Set CICE6 component defaults
export_cice6

# Set MOM6 component defaults
export_mom6

# Set WW3 component defaults
export_ww3

# Set CMEPS component defaults
export_cmeps

# FV3 defaults
export FRAC_GRID=.true.
export CCPP_SUITE=FV3_GFS_v17_coupled_p8
export INPUT_NML=global_control.nml.IN
export FIELD_TABLE=field_table_thompson_noaero_tke_GOCART
export DIAG_TABLE=diag_table_cpld.IN
export DIAG_TABLE_ADDITIONAL=''
export FIELD_TABLE_ADDITIONAL=''
export FV3_RUN=cpld_control_run.IN
export TILEDFIX=.false.

export FHZERO=6

export IALB=2
export IEMS=2
export LSM=2
export IOPT_DVEG=4
export IOPT_CRS=2
export IOPT_RAD=3
export IOPT_ALB=1
export IOPT_STC=3

export IOPT_SFC=3
export IOPT_TRS=2
export IOPT_DIAG=2

export D2_BG_K1=0.20
export D2_BG_K2=0.04
export PSM_BC=1
export DDDMP=0.1

export DZ_MIN=6

# Merra2 Aerosols & NSST
export USE_MERRA2=.true.
export IAER=1011
export NSTF_NAME=2,0,0,0,0

export LHEATSTRG=.false.
export LSEASPRAY=.true.

# RRTMGP
export DO_RRTMGP=.false.
export DOGP_CLDOPTICS_LUT=.true.
export DOGP_LWSCAT=.true.
export DOGP_SGS_CNV=.true.

# CA
export DO_CA=.true.
export CA_SGS=.true.
export CA_GLOBAL=.false.
export NCA=1
export NCELLS=5
export NLIVES=12
export NTHRESH=18
export NSEED=1
export NFRACSEED=0.5
export CA_TRIGGER=.true.
export NSPINUP=1
export ISEED_CA=12345

export FSICL=0
export FSICS=0

export USE_CICE_ALB=.true.
export MIN_SEAICE=1.0e-6
export DNATS=2
export IMP_PHYSICS=8
export LGFDLMPRAD=.false.
export DO_SAT_ADJ=.false.
export SATMEDMF=.true.

export CPLFLX=.true.
export CPLICE=.true.
export CPL=.true.
export CPLWAV=.true.
export CPLWAV2ATM=.true.
export USE_MED_FLUX=.false.
export CPLCHM=.true.
export CPLLND=.false.

# for FV3: default values will be changed if doing a warm-warm restart
export WARM_START=.false.
export MAKE_NH=.true.
export NA_INIT=1
export EXTERNAL_IC=.true.
export NGGPS_IC=.true.
export MOUNTAIN=.false.
# gocart inst_aod output; uses AERO_HIST.rc.IN from parm/gocart directory
export AOD_FRQ=060000

# checkpoint restarts
export RESTART_FILE_PREFIX=''
export RESTART_FILE_SUFFIX_SECS=''
export RT35D=''

#CDEPS ds2s
export MESH_DICE=none
export stream_files_dice=none
}
export_35d_run ()
{
  export CNTL_DIR=""
  export LIST_FILES=""
}
export_datm_cdeps ()
{
  export FV3=false
  export S2S=false
  export HAFS=false
  export AQM=false
  export FIRE_BEHAVIOR=false
  export DATM_CDEPS=true
  export DOCN_CDEPS=false
  export CDEPS_INLINE=false
  export DAYS=1

  # model configure
  export MODEL_CONFIGURE=datm_cdeps_configure.IN
  export SYEAR=2011
  export SMONTH=10
  export SDAY=01
  export SHOUR=00
  export FHMAX=24
  export DT_ATMOS=900
  export FHROT=0

  # required but unused
  export WARM_START=.false.
  export CPLWAV=.false.
  export CPLCHM=.false.

  # atm/ocn/ice resolution
  export IATM=1760
  export JATM=880
  export ATM_NX_GLB=${IATM}
  export ATM_NY_GLB=${JATM}
  export ATMRES="${IATM}x${JATM}"
  export OCNRES=100
  export ICERES=1.00
  export NX_GLB=360
  export NY_GLB=320

  # default resources
  export ATM_compute_tasks=${ATM_compute_tasks_cdeps_100}
  export OCN_tasks=${OCN_tasks_cdeps_100}
  export ICE_tasks=${ICE_tasks_cdeps_100}

  # Set CICE6 component defaults
  export_cice6
  # default non-mushy thermo for CICE
  export CICE_KTHERM=1
  export CICE_TFREEZE_OPTION=linear_salt

  # Set MOM6 component defaults
  export_mom6
  # default no waves
  export MOM6_USE_LI2016=False
  export MOM6_USE_WAVES=False
  export WW3_DOMAIN=''

  # Set CMEPS component defaults
  export_cmeps
  # default configure
  export UFS_CONFIGURE=ufs.configure.datm_cdeps.IN
  export atm_model=datm
  export CPLMODE=ufs.nfrac.aoflux

  # datm defaults
  export INPUT_NML=input.mom6.nml.IN
  export DIAG_TABLE=diag_table_template
  export DATM_SRC=CFSR
  export FILEBASE_DATM=cfsr
  export MESH_ATM=${FILEBASE_DATM}_mesh.nc
  export atm_datamode=GEFS
  export stream_files=INPUT/${FILEBASE_DATM}.201110.nc
  export EXPORT_ALL=.false.
  export STREAM_OFFSET=0

  export BL_SUFFIX=""
  export RT_SUFFIX=""
}

export_hafs_datm_cdeps ()
{
  export FV3=false
  export S2S=false
  export HAFS=true
  export AQM=false
  export FIRE_BEHAVIOR=false
  export DATM_CDEPS=true
  export DOCN_CDEPS=false
  export CDEPS_INLINE=false
  export INPES=${INPES_dflt}
  export JNPES=${JNPES_dflt}
  export NTILES=1

  export atm_model=datm
  export DATM_IN_CONFIGURE=datm_in.IN
  export DATM_STREAM_CONFIGURE=hafs_datm.streams.era5.IN
  export EXPORT_ALL=.false.
}

export_hafs_docn_cdeps ()
{
  export FV3=true
  export S2S=false
  export HAFS=true
  export AQM=false
  export FIRE_BEHAVIOR=false
  export DOCN_CDEPS=true
  export CDEPS_INLINE=false
  export INPES=${INPES_dflt}
  export JNPES=${JNPES_dflt}
  export NTILES=1

  export ocn_model=docn
  export ocn_datamode=sstdata
  export CMEPS_PIO_FORMAT='pnetcdf'
  export CMEPS_PIO_STRIDE=4
  export CMEPS_PIO_IOTASKS=-99
  export CMEPS_PIO_REARR='box'
  export CMEPS_PIO_ROOT=-99
  export DOCN_IN_CONFIGURE=docn_in.IN
  export DOCN_STREAM_CONFIGURE=hafs_docn.streams.IN
}

export_hafs_regional ()
{
  export FV3=true
  export S2S=false
  export HAFS=true
  export AQM=false
  export FIRE_BEHAVIOR=false
  export DATM_CDEPS=false
  export DOCN_CDEPS=false
  export CDEPS_INLINE=false
  export INPES=${INPES_dflt}
  export JNPES=${JNPES_dflt}
  export NTILES=1
  export BLOCKSIZE=24

  # model_configure
  export SYEAR=2019
  export SMONTH=08
  export SDAY=29
  export SHOUR=00
  export SECS=$((SHOUR*3600))
  export FHMAX=6
  export ENS_NUM=1
  export DT_ATMOS=900
  export CPL=.true.
  export RESTART_INTERVAL=0
  export FHROT=0
  export coupling_interval_fast_sec=0
  export QUILTING=.true.
  export WRITE_GROUP=1
  export WRTTASK_PER_GROUP=6
  export OUTPUT_HISTORY=.true.
  export WRITE_DOPOST=.false.
  export NUM_FILES=2
  export FILENAME_BASE="'atm' 'sfc'"
  export OUTPUT_GRID="'regional_latlon'"
  export OUTPUT_FILE="'netcdf'"
  export IDEFLATE=0
  export QUANTIZE_NSD=0
  export CEN_LON=-62.0
  export CEN_LAT=25.0
  export LON1=-114.5
  export LAT1=-5.0
  export LON2=-9.5
  export LAT2=55.0
  export DLON=0.03
  export DLAT=0.03

  # shel.inp
  # input.nml
  export CPL_IMP_MRG=.true.
  export DIAG_TABLE=diag_table_hafs
  export FIELD_TABLE=field_table_hafs

  export OCNRES=''
  export ICERES=''
  export DT_THERM_MOM6=''

  # Set WW3 component defaults
  export_ww3
  # default hafs with no ice
  export WW3_DOMAIN=natl_6m
  export WW3_MODDEF=mod_def.${WW3_DOMAIN}
  export WW3_WLEV='F'
  export WW3_ICE='F'
  export WW3_OUTPARS="WND HS T01 T02 DIR FP DP PHS PTP PDIR UST CHA USP"
  export WW3_RSTFLDS=" "
  export WW3_user_histname='false'
  export WW3_historync='false'
  export WW3_restartnc='true'
  export WW3_restart_from_binary='false'
  # For either history_nc or restart_nc true
  export WW3_PIO_FORMAT='pnetcdf'
  export WW3_PIO_STRIDE=4
  export WW3_PIO_IOTASKS=-99
  export WW3_PIO_REARR='box'
  export WW3_PIO_ROOT=-99

  # Set CMEPS component defaults
  export_cmeps
  # default hafs
  export ocn_model=hycom
  export CPLMODE=hafs
  export MESH_WAV=mesh.hafs.nc
}

export_hafs ()
{
export_fv3_v16
export FV3=true
export S2S=false
export HAFS=true
export AQM=false
export FIRE_BEHAVIOR=false
export DATM_CDEPS=false
export DOCN_CDEPS=false
export CDEPS_INLINE=false
export INPES=${INPES_dflt}
export JNPES=${JNPES_dflt}
export NTILES=1
export IMFSHALCNV=2
export IMFDEEPCNV=2
export HYBEDMF=.false.
export SATMEDMF=.true.
export MONINQ_FAC=-1.0
export HURR_PBL=.true.
export ISATMEDMF=1
export IOPT_SFC=1
export IOPT_DVEG=2
export IOPT_CRS=1
export IOPT_RAD=1
export IOPT_ALB=2
export IOPT_STC=1
export LSM=1
export DO_GSL_DRAG_LS_BL=.true.
export DO_GSL_DRAG_SS=.true.
export DO_GSL_DRAG_TOFD=.true.
export IMP_PHYSICS=11
export IAER=111
export CNVGWD=.false.
export LTAEROSOL=.false.
export CDMBWD=1.0,1.0,1.0,1.0
export LHEATSTRG=.false.
export LRADAR=.true.

export FV_CORE_TAU=5.
export RF_CUTOFF=30.e2
export RF_CUTOFF_NEST=50.e2

export IS_MOVING_NEST=".false."
export VORTEX_TRACKER=0
export NTRACK=0
export MOVE_CD_X=0
export MOVE_CD_Y=0
export CPL_IMP_MRG=.true.

export OUTPUT_GRID=''
export IMO=''
export JMO=''
export CEN_LON=''
export CEN_LAT=''
export LON1=''
export LAT1=''
export LON2=''
export LAT2=''
export DLON=''
export DLAT=''
export STDLAT1=''
export STDLAT2=''
export NX=''
export NY=''
export DX=''
export DY=''

export OUTPUT_GRID_2=''
export IMO_2=''
export JMO_2=''
export CEN_LON_2=''
export CEN_LAT_2=''
export LON1_2=''
export LAT1_2=''
export LON2_2=''
export LAT2_2=''
export DLON_2=''
export DLAT_2=''
export STDLAT1_2=''
export STDLAT2_2=''
export NX_2=''
export NY_2=''
export DX_2=''
export DY_2=''

export OUTPUT_GRID_3=''
export IMO_3=''
export JMO_3=''
export CEN_LON_3=''
export CEN_LAT_3=''
export LON1_3=''
export LAT1_3=''
export LON2_3=''
export LAT2_3=''
export DLON_3=''
export DLAT_3=''
export STDLAT1_3=''
export STDLAT2_3=''
export NX_3=''
export NY_3=''
export DX_3=''
export DY_3=''

export OUTPUT_GRID_4=''
export IMO_4=''
export JMO_4=''
export CEN_LON_4=''
export CEN_LAT_4=''
export LON1_4=''
export LAT1_4=''
export LON2_4=''
export LAT2_4=''
export DLON_4=''
export DLAT_4=''
export STDLAT1_4=''
export STDLAT2_4=''
export NX_4=''
export NY_4=''
export DX_4=''
export DY_4=''

export OUTPUT_GRID_5=''
export IMO_5=''
export JMO_5=''
export CEN_LON_5=''
export CEN_LAT_5=''
export LON1_5=''
export LAT1_5=''
export LON2_5=''
export LAT2_5=''
export DLON_5=''
export DLAT_5=''
export STDLAT1_5=''
export STDLAT2_5=''
export NX_5=''
export NY_5=''
export DX_5=''
export DY_5=''

export OUTPUT_GRID_6=''
export IMO_6=''
export JMO_6=''
export CEN_LON_6=''
export CEN_LAT_6=''
export LON1_6=''
export LAT1_6=''
export LON2_6=''
export LAT2_6=''
export DLON_6=''
export DLAT_6=''
export STDLAT1_6=''
export STDLAT2_6=''
export NX_6=''
export NY_6=''
export DX_6=''
export DY_6=''

export OUTPUT_FH='3 -1'
}

export_hrrr() {
export_fv3_v16
export NPZ=127
export NPZP=128
export DT_ATMOS=300
export SYEAR=2021
export SMONTH=03
export SDAY=22
export SHOUR=06
export OUTPUT_GRID='gaussian_grid'
export NSTF_NAME='2,0,0,0,0'
export WRITE_DOPOST=.true.
export IAER=5111
export FHMAX=12

export FRAC_GRID=.false.
export FRAC_ICE=.true.

export FV_CORE_TAU=10.
export RF_CUTOFF=7.5e2

export FV3_RUN=lake_control_run.IN
export CCPP_SUITE=FV3_HRRR
export INPUT_NML=rap.nml.IN
export FIELD_TABLE=field_table_thompson_aero_tke
export NEW_DIAGTABLE=diag_table_rap

export SFCLAY_COMPUTE_FLUX=.true.

export LKM=1
export IOPT_LAKE=2
export IMP_PHYSICS=8
export DNATS=0
export DO_SAT_ADJ=.false.
export LRADAR=.true.
export LTAEROSOL=.true.
export IALB=2
export IEMS=2
export HYBEDMF=.false.
export DO_MYNNEDMF=.true.
export DO_MYNNSFCLAY=.true.
export DO_DEEP=.false.
export SHAL_CNV=.false.
export IMFSHALCNV=-1
export IMFDEEPCNV=-1
export LHEATSTRG=.false.
export LSM=3
export LSOIL_LSM=9
export KICE=9

export GWD_OPT=3
export DO_UGWP_V0=.false.
export DO_UGWP_V0_OROG_ONLY=.false.
export DO_GSL_DRAG_LS_BL=.true.
export DO_GSL_DRAG_SS=.true.
export DO_GSL_DRAG_TOFD=.true.
export DO_UGWP_V1=.false.
export DO_UGWP_V1_OROG_ONLY=.false.
}

export_hrrr_conus13km()
{
export_fv3_v16
export SYEAR=2021
export SMONTH=05
export SDAY=12
export SHOUR=16
export FHMAX=2
export DT_ATMOS=120
export RESTART_INTERVAL=1
export QUILTING=.true.
export WRITE_GROUP=1
export WRTTASK_PER_GROUP=6
export NTILES=1
export WRITE_DOPOST=.false.
export OUTPUT_HISTORY=.true.
export OUTPUT_GRID=lambert_conformal
export OUTPUT_FILE="'netcdf'"

# Revert these two to GFS_typedefs defaults to avoid a crash:
export SEDI_SEMI=.false.
export DECFL=8

export RRFS_SMOKE=.true.
export SEAS_OPT=0

export LKM=1
export SFCLAY_COMPUTE_FLUX=.true.
export IALB=2
export ICLIQ_SW=2
export IEMS=2
export IOVR=3
export KICE=9
export LSM=3
export LSOIL_LSM=9
export DO_MYNNSFCLAY=.true.
export DO_MYNNEDMF=.true.
export HYBEDMF=.false.
export SHAL_CNV=.false.
export DO_SAT_ADJ=.false.
export DO_DEEP=.false.
export CCPP_SUITE='FV3_HRRR'
export INPES=12
export JNPES=12
export NPX=397
export NPY=233
export NPZ=65
export MAKE_NH=.false.
export NA_INIT=0
export DNATS=0
export EXTERNAL_IC=.false.
export NGGPS_IC=.false.
export MOUNTAIN=.true.
export WARM_START=.true.
export READ_INCREMENT=.false.
export RES_LATLON_DYNAMICS="'fv3_increment.nc'"
export NPZP=66
export FHZERO=1.0
export IMP_PHYSICS=8
export LDIAG3D=.false.
export QDIAG3D=.false.
export PRINT_DIFF_PGR=.true.
export FHCYC=0.0
export IAER=1011
export LHEATSTRG=.false.
export RANDOM_CLDS=.false.
export CNVCLD=.false.
export IMFSHALCNV=-1
export IMFDEEPCNV=-1
export CDMBWD='3.5,1.0'
export DO_SPPT=.false.
export DO_SHUM=.false.
export DO_SKEB=.false.
export LNDP_TYPE=0
export N_VAR_LNDP=0

export GWD_OPT=3
export DO_UGWP_V0=.false.
export DO_UGWP_V0_OROG_ONLY=.false.
export DO_GSL_DRAG_LS_BL=.true.
export DO_GSL_DRAG_SS=.true.
export DO_GSL_DRAG_TOFD=.true.
export DO_UGWP_V1=.false.
export DO_UGWP_V1_OROG_ONLY=.false.

export FV3_RUN=rrfs_warm_run.IN
export INPUT_NML=rrfs_conus13km_hrrr.nml.IN
export FIELD_TABLE=field_table_thompson_aero_tke_smoke
export DIAG_TABLE=diag_table_hrrr
export MODEL_CONFIGURE=model_configure_rrfs_conus13km.IN
export DIAG_TABLE_ADDITIONAL=diag_additional_rrfs_smoke
export FRAC_ICE=.true.
}

export_rap_common()
{
export_fv3_v16
export NPZ=127
export NPZP=128
export DT_ATMOS=300
export SYEAR=2021
export SMONTH=03
export SDAY=22
export SHOUR=06
export OUTPUT_GRID='gaussian_grid'
export NSTF_NAME='2,0,0,0,0'
export WRITE_DOPOST=.true.
export IAER=5111

export FV_CORE_TAU=10.
export RF_CUTOFF=7.5e2

export FV3_RUN=control_run.IN
export INPUT_NML=rap.nml.IN
export FIELD_TABLE=field_table_thompson_aero_tke

export LHEATSTRG=.false.
export IMP_PHYSICS=8
export DNATS=0
export DO_SAT_ADJ=.false.
export LRADAR=.true.
export LTAEROSOL=.true.
export IALB=2
export IEMS=2
export HYBEDMF=.false.
export DO_MYNNEDMF=.true.
export DO_MYNNSFCLAY=.true.
}

export_rap()
{
  export_rap_common

  export DIAG_TABLE=diag_table_rap
  export CCPP_SUITE=FV3_RAP

  export IMFSHALCNV=3
  export IMFDEEPCNV=3
  export LSM=3
  export LSOIL_LSM=9
  export KICE=9

  export GWD_OPT=3
  export DO_UGWP_V0=.false.
  export DO_UGWP_V0_OROG_ONLY=.false.
  export DO_GSL_DRAG_LS_BL=.true.
  export DO_GSL_DRAG_SS=.true.
  export DO_GSL_DRAG_TOFD=.true.
  export DO_UGWP_V1=.false.
  export DO_UGWP_V1_OROG_ONLY=.false.
}

export_rrfs_v1()
{
  export_rap_common

  export CCPP_SUITE=FV3_RRFS_v1beta
  export DIAG_TABLE=diag_table_rap_noah

  export DO_DEEP=.false.
  export SHAL_CNV=.false.
  export IMFSHALCNV=-1
  export IMFDEEPCNV=-1
  export LHEATSTRG=.false.
  export LSM=2
  export LSOIL_LSM=4
}
