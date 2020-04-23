#define SampleSplit_cxx
#include<iostream>
#include "SampleSplit.h"
#include <TH2.h>
#include <TStyle.h>
#include <TCanvas.h>
#include "TH1F.h"
#include <map>

//using namespace std;

void SampleSplit::Loop()
{ 
   //std::cout<<"Sample list name: "<<SampleName<<std::endl;
   if (fChain == 0) return;
   std::map<TString, float> nEvents;
   std::vector<TString> samples;
   std::vector<TString> samples_4b_ZH;
   std::vector<TString> samples_4b_ggZH;
   std::vector<TString> samples_4d_ZH;
   std::vector<TString> samples_4d_ggZH;
   std::vector<TString> samples_4Tau_ZH;
   std::vector<TString> samples_4Tau_ggZH;

   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ZH.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");

   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4b_ggZH.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
   
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ZH.push_back(  "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");

   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4d_ggZH.push_back("ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
   
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ZH.push_back(  "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");

   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
   samples_4Tau_ggZH.push_back("ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
   
   if     (SampleName.Contains("4b_ggZH"))   samples=samples_4b_ggZH;
   else if(SampleName.Contains("4b_ZH"))     samples=samples_4b_ZH;
   else if(SampleName.Contains("4d_ggZH"))   samples=samples_4d_ggZH;
   else if(SampleName.Contains("4d_ZH"))     samples=samples_4d_ZH;
   else if(SampleName.Contains("4Tau_ggZH")) samples=samples_4Tau_ggZH;
   else if(SampleName.Contains("4Tau_ZH"))   samples=samples_4Tau_ZH;
   else std::cout<<"UNKNOWN INPUTS"<<std::endl;

// Count Events/instantiate roots
   for(unsigned k = 0; k<samples.size(); k++){
     nEvents[samples[k]] = 0.0;
     TFile *ifile = new TFile(samples[k]+".root","update");
     TH1F *hTTSF              = new TH1F("hTTSF",      "TTbar scalefactors",   200,  0,   2);
     TH1F *hEvents            = new TH1F("hEvents",    "total processed events",   1,  0,   2);
     TH1F *hGenEventWeightSum = new TH1F("hGenEventWeightSum",    "Sum of GenEventWeights",   1,  0,   2);
     
     TDirectory *lldj = ifile->mkdir("lldjNtuple");
     lldj->cd();
     hTTSF->Write();
     hEvents->Write();
     hGenEventWeightSum->Write();
     TTree* EventTree_ = new TTree("EventTree", "Event data");
     EventTree_->Write();
     delete ifile;
   }
   //int count40=0;

// main Loop
   Long64_t nentries = fChain->GetEntries();
   int N = nentries; //=nentries;
   Long64_t nbytes = 0, nb = 0;
   for (Long64_t jentry=0; jentry<N;jentry++) {
      Long64_t ientry = LoadTree(jentry);
      if (ientry < 0) break;
      nb = fChain->GetEntry(jentry);   nbytes += nb;
      //std::cout<<*model<<std::endl;

   //  if(*model == "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_TuneCP5_13TeV-powheg-pythia8") {count40++; nEvents[*model] +=1;}
   
// Loop through sample names and fill tree
     for(unsigned i=0; i<samples.size(); i++){
       if(*model==samples[i]){
         TFile *file = new TFile(samples[i]+".root","update");
          
         TTree *oldtree = (TTree*) file->Get("lldjNtuple/EventTree");
       
         TH1F *hTTSF_              = (TH1F *)file->Get("lldjNtuple/hTTSF");
         TH1F *hEvents_            = (TH1F *)file->Get("lldjNtuple/hEvents");
         TH1F *hGenEventWeightSum_ = (TH1F *)file->Get("lldjNtuple/hGenEventWeightSum");
         file->cd("lldjNtuple");
         hTTSF_             ->Fill(1.);
         hEvents_           ->Fill(1.);
         hGenEventWeightSum_->Fill(1,AODGenEventWeight);
         
         TTree *newTree = fChain->CloneTree(0);
         newTree->Fill();
         TList *list = new TList;
         list->Add(oldtree);
         list->Add(newTree);
         TTree *finalTree = TTree::MergeTrees(list);
         file->Write("",TObject::kOverwrite);
         finalTree->AutoSave();
         delete file;
       }
    }
   }//for jentry
   //std::cout<< "count40 "<<count40<< "  map count40 "<<nEvents["ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_TuneCP5_13TeV-powheg-pythia8"]<<std::endl;
}
