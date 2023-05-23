#!/bin/bash
#

scratch=/scratch
stilts="stilts -Xmx150G -Djava.io.tmpdir=${scratch} -verbose"

tab1=/arc/home/aydanmckay/gaiahike/bp_rp_apogee.fits
tab2=/arc/home/aydanmckay/gaiahike/bp_rp_lamost_pristine.fits
outfile=/arc/home/aydanmckay/mae_tab/bp_rp_apogee_lamost_pristine.fits

${stilts} tmatch2 \
        in1=${tab1} \
        values1='source_id' \
        in2=${tab2} \
        values2='source_id_2' \
        matcher=exact \
        join=1or2 \
        out=${outfile}