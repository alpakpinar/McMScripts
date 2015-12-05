#!/bin/bash

cd /afs/cern.ch/work/p/perrozzi/private/git/Hbb/validations/CMSSW_7_1_20_patch2/src; eval `scramv1 runtime -sh`; cd -
cern-get-sso-cookie -u https://cms-pdmv.cern.ch/mcm/ -o ~/private/prod-cookie.txt --krb --reprocess
cern-get-sso-cookie -u https://cms-pdmv-dev.cern.ch/mcm/ -o ~/private/dev-cookie.txt --krb --reprocess

python check_hig_requests.py
