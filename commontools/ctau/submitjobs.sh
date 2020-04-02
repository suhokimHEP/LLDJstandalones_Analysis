doSubmit=true

samples_16=( \ 
 "/store/group/lpchbb/LLDJntuples/ctau3/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-3/200325_235335/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/ctau3/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-3/200325_235335/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/ctau3/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-3/200325_235335/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/ctau3/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-3/200325_235335/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/ctau3/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-3/200325_235335/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/ctau3/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-3/200325_235335/0000/lldjntuple_mc_AOD_6.root"   \
 "/store/group/lpchbb/LLDJntuples/ctau3/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-3/200325_235335/0000/lldjntuple_mc_AOD_7.root"   \
) 

#make directories
mkdir -p err
mkdir -p out
mkdir -p log

for sample in ${samples_16[@]} 
do
   # write base for submit file
   printf "Universe = vanilla\n" > submitfile
   printf "Executable = run_job.sh\n" >> submitfile
   printf "Should_Transfer_Files = YES \n" >> submitfile
   printf "WhenToTransferOutput = ON_EXIT\n" >> submitfile
   printf "Transfer_Input_Files = ctau_interpolation.C, cms_setup.tar.gz\n" >> submitfile
   printf "notify_user = $(whoami)@cern.ch\n" >> submitfile
   printf "x509userproxy = \$ENV(X509_USER_PROXY)\n" >> submitfile
   printf "\n" >> submitfile
   printf "Output = out/OPT.\$(Cluster)_\$(Process).stdout\n" >> submitfile
   printf "Error  = err/OPT.\$(Cluster)_\$(Process).stderr\n" >> submitfile
   printf "Log    = log/OPT.\$(Cluster)_\$(Process).log\n" >> submitfile
   printf "\n" >> submitfile
   printf "RequestMemory = 2000\n" >> submitfile
   printf "\n" >> submitfile
   printf "Arguments = ${sample}\n" >>submitfile
   printf "Queue\n">>submitfile
  echo made file for ${sample}    
  #submit job
  if [ ${doSubmit} = true ]
  then
   condor_submit submitfile
  fi
done

