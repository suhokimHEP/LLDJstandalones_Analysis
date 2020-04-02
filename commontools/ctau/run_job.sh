#!/bin/bash 

echo "TEST"
voms-proxy-info --all
ls -l
echo "DONE"
export PATH=${PATH}:/cvmfs/cms.cern.ch/common
export CMS_PATH=/cvmfs/cms.cern.ch

#export SCRAM_ARCH=slc6_amd64_gcc481; export CRAB_RUNTIME_TARBALL=local; export CRAB_TASKMANAGER_TARBALL=local; export _CONDOR_JOB_AD=Job.${1}.submit
#export CRAB3_RUNTIME_DEBUG=True
#tar xzmf CMSRunAnalysis.tar.gz
#cp Job.submit Job.${1}.submit
source /cvmfs/cms.cern.ch/cmsset_default.sh
export SCRAM_ARCH=slc6_amd64_gcc530
tar -zxvf cms_setup.tar.gz
cd CMSSW_8_1_0/src
eval `scram runtime -sh`
mkdir -p Results
cp ../../ctau_interpolation.C .

pwd
ls -la
ls -la ../../

#root -l -b -q 'taggerSlim.C(0.4, -1.45, "2016", "DYJetsToLL_M-10to50_OPTtree.root")'
root -l -b -q "ctau_interpolation.C("'"'"$1"'"'")"

#gfal-copy -f *.txt /uscms/home/ddiaz/nobackup/ANComments/OPT/Condor/FromCristian/Results/
gfal-copy -f *.root gsiftp://cmseos-gridftp.fnal.gov//store/user/skim2/ctau/Results/

#cp Results/*.txt root://cmseos.fnal.gov//store/group/lpchbb/LLDJntuples/cmorgoth/.


