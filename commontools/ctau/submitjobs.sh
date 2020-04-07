doSubmit=true

samples_16=( \ 
# "/uscms/home/skim2/nobackup/LLDJstandalones_Analysis/commontools/ctau/localfile/ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10_TuneCP5_13TeV-powheg-pythia8.root"    \
#"/uscms/home/ddiaz/nobackup/LLDJstandalones_Analysis/commontools/SignalSplit/2018cTauTest/ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_TuneCP5_13TeV-powheg-pythia8.root"    \
#"/uscms/home/ddiaz/nobackup/LLDJstandalones_Analysis/commontools/SignalSplit/2018cTauTest/ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10_TuneCP5_13TeV-powheg-pythia8.root"    \
#"/uscms/home/ddiaz/nobackup/LLDJstandalones_Analysis/commontools/SignalSplit/2018cTauTest/ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10_TuneCP5_13TeV-powheg-pythia8.root"    \
#"/uscms/home/ddiaz/nobackup/LLDJstandalones_Analysis/commontools/SignalSplit/2018cTauTest/ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_TuneCP5_13TeV-powheg-pythia8.root"    \
#"/uscms/home/ddiaz/nobackup/LLDJstandalones_Analysis/commontools/SignalSplit/2018cTauTest/ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10_TuneCP5_13TeV-powheg-pythia8.root"    \
# "/store/user/suho/ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10_TuneCP5_13TeV-powheg-pythia8.root"   \
# "/store/group/lpchbb/LLDJntuples/ctau3/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-3/200325_235335/0000/lldjntuple_mc_AOD_1.root"   \
# "/store/group/lpchbb/LLDJntuples/ctau3/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-3/200325_235335/0000/lldjntuple_mc_AOD_2.root"   \
# "/store/group/lpchbb/LLDJntuples/ctau3/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-3/200325_235335/0000/lldjntuple_mc_AOD_3.root"   \
# "/store/group/lpchbb/LLDJntuples/ctau3/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-3/200325_235335/0000/lldjntuple_mc_AOD_4.root"   \
# "/store/group/lpchbb/LLDJntuples/ctau3/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-3/200325_235335/0000/lldjntuple_mc_AOD_5.root"   \
# "/store/group/lpchbb/LLDJntuples/ctau3/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-3/200325_235335/0000/lldjntuple_mc_AOD_6.root"   \
# "/store/group/lpchbb/LLDJntuples/ctau3/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-3/200325_235335/0000/lldjntuple_mc_AOD_7.root"   \



 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-10/191114_033713/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-10/191114_033713/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-10/191114_033713/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-10/191114_033713/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-10/191114_033713/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-10/191114_033713/0000/lldjntuple_mc_AOD_6.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-10/191114_033411/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-10/191114_033411/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-10/191114_033411/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-10/191114_033411/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-10/191114_033411/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-10/191114_033411/0000/lldjntuple_mc_AOD_6.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-10/191114_032948/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-10/191114_032948/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-10/191114_032948/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-10/191114_032948/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-10/191114_032948/0000/lldjntuple_mc_AOD_5.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-10/191114_032538/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-10/191114_032538/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-10/191114_032538/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-10/191114_032538/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-10/191114_032538/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-10/191114_032538/0000/lldjntuple_mc_AOD_6.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-10/191114_032538/0000/lldjntuple_mc_AOD_7.root"   \


 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-7_ctauS-10/191116_205330/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-7_ctauS-10/191116_205330/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-7_ctauS-10/191116_205330/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-7_ctauS-10/191116_205330/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-7_ctauS-10/191116_205330/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-7_ctauS-10/191116_205330/0000/lldjntuple_mc_AOD_6.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-15_ctauS-10/191115_192043/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-15_ctauS-10/191115_192043/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-15_ctauS-10/191115_192043/0000/lldjntuple_mc_AOD_3.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-40_ctauS-10/191116_205114/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-40_ctauS-10/191116_205114/0000/lldjntuple_mc_AOD_2.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-55_ctauS-10/191115_191715/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-55_ctauS-10/191115_191715/0000/lldjntuple_mc_AOD_2.root"   \



 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-100/191114_033819/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-100/191114_033819/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-100/191114_033819/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-100/191114_033819/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-100/191114_033819/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-100/191114_033819/0000/lldjntuple_mc_AOD_6.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-100/191114_033430/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-100/191114_033430/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-100/191114_033430/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-100/191114_033430/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-100/191114_033430/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-100/191114_033430/0000/lldjntuple_mc_AOD_6.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-100/191114_033222/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-100/191114_033222/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-100/191114_033222/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-100/191114_033222/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-100/191114_033222/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-100/191114_033222/0000/lldjntuple_mc_AOD_6.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-100/191114_033222/0000/lldjntuple_mc_AOD_7.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-100/191114_033222/0000/lldjntuple_mc_AOD_8.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-100/191114_033222/0000/lldjntuple_mc_AOD_9.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-100/191114_033222/0000/lldjntuple_mc_AOD_10.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-100/191114_033222/0000/lldjntuple_mc_AOD_11.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-100/191114_033222/0000/lldjntuple_mc_AOD_12.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-100/191114_033222/0000/lldjntuple_mc_AOD_13.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-100/191114_033222/0000/lldjntuple_mc_AOD_14.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-100/191114_033222/0000/lldjntuple_mc_AOD_15.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-100/191114_033222/0000/lldjntuple_mc_AOD_16.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-100/191114_032611/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-100/191114_032611/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-100/191114_032611/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-100/191114_032611/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-100/191114_032611/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-100/191114_032611/0000/lldjntuple_mc_AOD_6.root"   \


 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-7_ctauS-100/191115_192230/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-7_ctauS-100/191115_192230/0000/lldjntuple_mc_AOD_2.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-15_ctauS-100/191116_205235/0000/lldjntuple_mc_AOD_1.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-40_ctauS-100/191116_205134/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-40_ctauS-100/191116_205134/0000/lldjntuple_mc_AOD_2.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-55_ctauS-100/191116_205009/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-55_ctauS-100/191116_205009/0000/lldjntuple_mc_AOD_2.root"   \


 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-1000/191114_033902/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-1000/191114_033902/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-1000/191114_033902/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-1000/191114_033902/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-1000/191114_033902/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-7_ctauS-1000/191114_033902/0000/lldjntuple_mc_AOD_6.root"   \
 
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-1000/191114_033456/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-1000/191114_033456/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-1000/191114_033456/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-1000/191114_033456/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-1000/191114_033456/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-1000/191114_033456/0000/lldjntuple_mc_AOD_6.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-1000/191114_033456/0000/lldjntuple_mc_AOD_7.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-15_ctauS-1000/191114_033456/0000/lldjntuple_mc_AOD_8.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-1000/191114_033312/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-1000/191114_033312/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-1000/191114_033312/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-1000/191114_033312/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-40_ctauS-1000/191114_033312/0000/lldjntuple_mc_AOD_5.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-1000/191114_032821/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-1000/191114_032821/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-1000/191114_032821/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-1000/191114_032821/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-1000/191114_032821/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-1000/191114_032821/0000/lldjntuple_mc_AOD_6.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTodddd_MS-55_ctauS-1000/191114_032821/0000/lldjntuple_mc_AOD_7.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-7_ctauS-1000/191115_192254/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-7_ctauS-1000/191115_192254/0000/lldjntuple_mc_AOD_2.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-15_ctauS-1000/191116_205255/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-15_ctauS-1000/191116_205255/0000/lldjntuple_mc_AOD_2.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-40_ctauS-1000/191116_205156/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-40_ctauS-1000/191116_205156/0000/lldjntuple_mc_AOD_2.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-55_ctauS-1000/191116_205032/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTodddd_MS-55_ctauS-1000/191116_205032/0000/lldjntuple_mc_AOD_2.root"   \



 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-10/191121_020315/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-10/191121_020315/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-10/191121_020315/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-10/191121_020315/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-10/191121_020315/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-10/191121_020315/0000/lldjntuple_mc_AOD_6.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-10/191121_020315/0000/lldjntuple_mc_AOD_7.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-100/191121_020407/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-100/191121_020407/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-100/191121_020407/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-100/191121_020407/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-100/191121_020407/0000/lldjntuple_mc_AOD_5.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-1000/191121_020528/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-1000/191121_020528/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-1000/191121_020528/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-1000/191121_020528/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-1000/191121_020528/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-1000/191121_020528/0000/lldjntuple_mc_AOD_6.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-1000/191121_020528/0000/lldjntuple_mc_AOD_7.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-7_ctauS-1000/191121_020528/0000/lldjntuple_mc_AOD_8.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-10/191121_014759/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-10/191121_014759/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-10/191121_014759/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-10/191121_014759/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-10/191121_014759/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-10/191121_014759/0000/lldjntuple_mc_AOD_6.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-10/191121_014759/0000/lldjntuple_mc_AOD_7.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-100/191121_014828/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-100/191121_014828/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-100/191121_014828/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-100/191121_014828/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-100/191121_014828/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-100/191121_014828/0000/lldjntuple_mc_AOD_6.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-100/191121_014828/0000/lldjntuple_mc_AOD_7.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-100/191121_014828/0000/lldjntuple_mc_AOD_8.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-100/191121_014828/0000/lldjntuple_mc_AOD_9.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-1000/191121_014947/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-1000/191121_014947/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-1000/191121_014947/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-1000/191121_014947/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-1000/191121_014947/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-15_ctauS-1000/191121_014947/0000/lldjntuple_mc_AOD_6.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-10/191121_015207/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-10/191121_015207/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-10/191121_015207/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-10/191121_015207/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-10/191121_015207/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-10/191121_015207/0000/lldjntuple_mc_AOD_6.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-100/191121_015312/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-100/191121_015312/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-100/191121_015312/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-100/191121_015312/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-100/191121_015312/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-100/191121_015312/0000/lldjntuple_mc_AOD_6.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-100/191121_015312/0000/lldjntuple_mc_AOD_7.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-1000/191121_015417/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-1000/191121_015417/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-1000/191121_015417/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-1000/191121_015417/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-40_ctauS-1000/191121_015417/0000/lldjntuple_mc_AOD_5.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-10/191121_015754/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-10/191121_015754/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-10/191121_015754/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-10/191121_015754/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-10/191121_015754/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-10/191121_015754/0000/lldjntuple_mc_AOD_6.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-100/191121_015830/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-100/191121_015830/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-100/191121_015830/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-100/191121_015830/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-100/191121_015830/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-100/191121_015830/0000/lldjntuple_mc_AOD_6.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-1000/191121_015956/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-1000/191121_015956/0000/lldjntuple_mc_AOD_2.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-1000/191121_015956/0000/lldjntuple_mc_AOD_3.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-1000/191121_015956/0000/lldjntuple_mc_AOD_4.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-1000/191121_015956/0000/lldjntuple_mc_AOD_5.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-1000/191121_015956/0000/lldjntuple_mc_AOD_6.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-1000/191121_015956/0000/lldjntuple_mc_AOD_7.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ZH_HToSSTo4Tau_MS-55_ctauS-1000/191121_015956/0000/lldjntuple_mc_AOD_8.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-7_ctauS-10/191121_021751/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-7_ctauS-10/191121_021751/0000/lldjntuple_mc_AOD_2.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-7_ctauS-100/191121_022047/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-7_ctauS-100/191121_022047/0000/lldjntuple_mc_AOD_2.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-7_ctauS-1000/191121_022213/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-7_ctauS-1000/191121_022213/0000/lldjntuple_mc_AOD_2.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-15_ctauS-10/191121_020827/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-15_ctauS-10/191121_020827/0000/lldjntuple_mc_AOD_2.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-15_ctauS-100/191121_020910/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-15_ctauS-100/191121_020910/0000/lldjntuple_mc_AOD_2.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-15_ctauS-1000/191121_021023/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-15_ctauS-1000/191121_021023/0000/lldjntuple_mc_AOD_2.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-40_ctauS-10/191121_021224/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-40_ctauS-10/191121_021224/0000/lldjntuple_mc_AOD_2.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-40_ctauS-100/191121_021251/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-40_ctauS-100/191121_021251/0000/lldjntuple_mc_AOD_2.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-40_ctauS-1000/191121_021337/0000/lldjntuple_mc_AOD_1.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-55_ctauS-10/191121_021451/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-10_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-55_ctauS-10/191121_021451/0000/lldjntuple_mc_AOD_2.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-55_ctauS-100/191121_021524/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-100_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-55_ctauS-100/191121_021524/0000/lldjntuple_mc_AOD_2.root"   \

 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-55_ctauS-1000/191121_021602/0000/lldjntuple_mc_AOD_1.root"   \
 "/store/group/lpchbb/LLDJntuples/topRWT/ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1000_TuneCUETP8M1_13TeV-powheg-pythia8/crab_ggZH_HToSSTo4Tau_MS-55_ctauS-1000/191121_021602/0000/lldjntuple_mc_AOD_2.root"   \
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

