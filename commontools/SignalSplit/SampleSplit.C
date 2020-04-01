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
   if (fChain == 0) return;
   std::map<TString, float> nEvents;
   std::vector<TString> samples;
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back(  "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");
   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-0_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1000_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10000_TuneCP5_13TeV-powheg-pythia8");
//   samples.push_back("ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100000_TuneCP5_13TeV-powheg-pythia8");

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
     ifile->Print();
     delete ifile;
   }
   int count40=0;
   int count55=0;
   int ggcount40=0;
   int ggcount55=0;

// main Loop
   Long64_t nentries = fChain->GetEntries();
   int N = nentries; //=nentries;
   Long64_t nbytes = 0, nb = 0;
   for (Long64_t jentry=0; jentry<N;jentry++) {
      Long64_t ientry = LoadTree(jentry);
      if (ientry < 0) break;
      nb = fChain->GetEntry(jentry);   nbytes += nb;
      //std::cout<<*model<<std::endl;
      //std::cout<<"event:"<<event<<"  nCaloJet:"<<AODnCaloJet<<"  JetPtSize:"<<AODCaloJetPt->size()
               //<<"  JetEtaSize:"<<AODCaloJetEta->size()<<"  model:"<<*model
               //<<std::endl;

     if(*model == "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_TuneCP5_13TeV-powheg-pythia8") {count40++; nEvents[*model] +=1;}
     if(*model == "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-0_TuneCP5_13TeV-powheg-pythia8")  {count55++; nEvents[*model] +=1;}
     if(*model == "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_TuneCP5_13TeV-powheg-pythia8") {ggcount40++; nEvents[*model] +=1;}
     if(*model == "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-0_TuneCP5_13TeV-powheg-pythia8")  {ggcount55++; nEvents[*model] +=1;}
   
     //   std::cout<<std::endl;
// Loop through sample names and fill tree
     for(unsigned i=0; i<samples.size(); i++){
       //std::cout<<samples[i]<<std::endl;
       if(*model==samples[i]){
         std::cout<<i<<std::endl;
         //TFile *oldfile = new TFile(samples[i]+".root","update");
         TFile *file = new TFile(samples[i]+".root","update");
         file->Print();
         //TDirectory *lldj_ = (TDirectory*)file->Get("lldjNtuple");
         //_->cd();
          
         std::cout<<"before get oldtree"<<std::endl;
         TTree *oldtree = (TTree*) file->Get("lldjNtuple/EventTree");
         //TTree *oldtree = (TTree*) file->Get("EventTree");
         std::cout<<"after get oldtree"<<std::endl;
       
         TH1F *hTTSF_              = (TH1F *)file->Get("lldjNtuple/hTTSF");
         TH1F *hEvents_            = (TH1F *)file->Get("lldjNtuple/hEvents");
         TH1F *hGenEventWeightSum_ = (TH1F *)file->Get("lldjNtuple/hGenEventWeightSum");
         std::cout<<" get histos"<<std::endl;
         file->cd("lldjNtuple");
         hTTSF_             ->Fill(1.);
         hEvents_           ->Fill(1.);
         hGenEventWeightSum_->Fill(1.);
         std::cout<<"fill histos"<<std::endl;
         
         TTree *newTree = fChain->CloneTree(0);
         newTree->Fill();
         TList *list = new TList;
         list->Add(oldtree);
         list->Add(newTree);
         TTree *finalTree = TTree::MergeTrees(list);
         //newTree->Print();
         //newTree->AutoSave();
         
         std::cout<<"passes tree merge"<<std::endl;
         

         file->Write("",TObject::kOverwrite);
         std::cout<<"Write"<<std::endl;
         //file->Close();

         finalTree->AutoSave();
         std::cout<<"AutoSave"<<std::endl;
         //finalTree->Write();
         delete file;
         //finalTree->Reset();
         //delete oldfile;
       }
    }
   }//for jentry
   std::cout<< "count40 "<<count40<< "  map count40 "<<nEvents["ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_TuneCP5_13TeV-powheg-pythia8"]<<std::endl;
   std::cout<< "count55 "<<count55<< "  map count55 "<<nEvents["ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-0_TuneCP5_13TeV-powheg-pythia8"]<<std::endl;
   std::cout<< "ggcount40 "<<ggcount40<< "  map count40 "<<nEvents["ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_TuneCP5_13TeV-powheg-pythia8"]<<std::endl;
   std::cout<< "ggcount55 "<<ggcount55<< "  map count55 "<<nEvents["ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-0_TuneCP5_13TeV-powheg-pythia8"]<<std::endl;
}


























//   TString ZH_15_0      = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-0_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_15_0p05   = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_15_1      = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_15_10     = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_15_100    = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_15_1000   = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1000_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_15_10000  = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10000_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_15_100000 = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100000_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_40_0      = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-0_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_40_0p05   = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_40_1      = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_40_10     = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_40_100    = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_40_1000   = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1000_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_40_10000  = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10000_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_40_100000 = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100000_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_55_0      = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-0_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_55_0p05   = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-0p05_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_55_1      = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_55_10     = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_55_100    = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_55_1000   = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1000_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_55_10000  = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10000_TuneCP5_13TeV-powheg-pythia8";
//   TString ZH_55_100000 = "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100000_TuneCP5_13TeV-powheg-pythia8";
//
//   TH1F* h_ZH_15_0_dist      = new TH1F("h_ZH_15_0_dist",      "h_ZH_15_0_dist"     , 100, 0.0, 100.0 );  
//   TH1F* h_ZH_15_0p05_dist   = new TH1F("h_ZH_15_0p05_dist",   "h_ZH_15_0p05_dist"  , 100, 0.0, 100.0 );  
//   TH1F* h_ZH_15_1_dist      = new TH1F("h_ZH_15_1_dist",      "h_ZH_15_1_dist"     , 100, 0.0, 1.0 );  
//   TH1F* h_ZH_15_10_dist     = new TH1F("h_ZH_15_10_dist",     "h_ZH_15_10_dist"    , 100, 0.0, 10.0 );  
//   TH1F* h_ZH_15_100_dist    = new TH1F("h_ZH_15_100_dist",    "h_ZH_15_100_dist"   , 100, 0.0, 100.0 );  
//   TH1F* h_ZH_15_1000_dist   = new TH1F("h_ZH_15_1000_dist",   "h_ZH_15_1000_dist"  , 100, 0.0, 1000.0 );  
//   TH1F* h_ZH_15_10000_dist  = new TH1F("h_ZH_15_10000_dist",  "h_ZH_15_10000_dist" , 100, 0.0, 10000.0 );  
//   TH1F* h_ZH_15_100000_dist = new TH1F("h_ZH_15_100000_dist", "h_ZH_15_100000_dist", 100, 0.0, 100000.0 );  
//   TH1F* h_ZH_15_10_mass = new TH1F("h_ZH_15_10_mass", "h_ZH_15_10_mass", 60, 0.0, 60.0 );  
//   TH1F* h_ZH_40_10_mass = new TH1F("h_ZH_40_10_mass", "h_ZH_40_10_mass", 60, 0.0, 60.0 );  
//   TH1F* h_ZH_55_10_mass = new TH1F("h_ZH_55_10_mass", "h_ZH_55_10_mass", 60, 0.0, 60.0 );  
//   if (fChain == 0) return;
//
//   Long64_t nentries = fChain->GetEntriesFast();
//   int N = nentries; //=nentries;
//   Long64_t nbytes = 0, nb = 0;
//   for (Long64_t jentry=0; jentry<N;jentry++) {
//      Long64_t ientry = LoadTree(jentry);
//      if (ientry < 0) break;
//      nb = fChain->GetEntry(jentry);   nbytes += nb;
//      // if (Cut(ientry) < 0) continue;
//   std::cout<<*model<<std::endl;
//
//
//
//   //std::cout<<"DecaydistSize: "<<Decaydist->size()<<std::endl;
//   for (int i = 0; i <Decaydist->size(); i++){
//     //std::cout<<"Decaydist:   " << Decaydist->at(i) <<std::endl;
//     if(*model == ZH_15_0)      h_ZH_15_0_dist->Fill(Decaydist->at(i));
//     if(*model == ZH_15_0p05)   h_ZH_15_0p05_dist->Fill(Decaydist->at(i));
//     if(*model == ZH_15_1)      h_ZH_15_1_dist->Fill(Decaydist->at(i));
//     if(*model == ZH_15_10)     h_ZH_15_10_dist->Fill(Decaydist->at(i));
//     if(*model == ZH_15_100)    h_ZH_15_100_dist->Fill(Decaydist->at(i));
//     if(*model == ZH_15_1000)   h_ZH_15_1000_dist->Fill(Decaydist->at(i));
//     if(*model == ZH_15_10000)  h_ZH_15_10000_dist->Fill(Decaydist->at(i));
//     if(*model == ZH_15_100000) h_ZH_15_100000_dist->Fill(Decaydist->at(i));
//   }
//   //std::cout<<"llpIdSize: "<<llpId->size()<<std::endl;
//
//
//   for (int k = 0; k < llpId->size(); k++){
//     //std::cout <<"llpID:      " << llpId     ->at(k) <<std::endl;
//   //  std::cout << llpStatus ->at(k) <<std::endl;
//   //  std::cout << llpPt     ->at(k) <<std::endl;
//   //  std::cout << llpEta    ->at(k) <<std::endl;
//   //  std::cout << llpPhi    ->at(k) <<std::endl;
//     //std::cout <<"llp Mass:   "<< llpMass   ->at(k) <<std::endl;
//   // // std::cout << llpvX     ->at(k) <<std::endl;
//   // // std::cout << llpvY     ->at(k) <<std::endl;
//   // // std::cout << llpvZ     ->at(k) <<std::endl;
//     if(*model == ZH_15_10) h_ZH_15_10_mass->Fill(llpMass->at(k));
//     if(*model == ZH_40_10) h_ZH_40_10_mass->Fill(llpMass->at(k));
//     if(*model == ZH_55_10) h_ZH_55_10_mass->Fill(llpMass->at(k));
//   }
//
//   }
//   TCanvas *c1 = new TCanvas("c1","c1",800,1000);
//   gStyle->SetOptStat(0);
//   c1->cd();
//   h_ZH_15_10_mass->SetLineColor(kRed);
//   h_ZH_40_10_mass->SetLineColor(kBlue);
//   h_ZH_55_10_mass->SetLineColor(kGreen);
//   
//   h_ZH_15_10_mass->Draw("hist");
//   h_ZH_40_10_mass->Draw("hist sames");
//   h_ZH_55_10_mass->Draw("hist sames");
//   
//   h_ZH_15_10_mass->SetTitle("Scalar Mass"); 
//   //h_ZH_15_10_mass->SetMaximum(3500); 
//   h_ZH_15_10_mass->SetMaximum(h_ZH_15_10_mass->GetMaximum()*1.25); 
//  
//   TLegend *leg;
//     leg = new TLegend(0.2,0.73,0.88,0.89);
//     leg->SetBorderSize(0);
//     leg->SetNColumns(1);
//     leg->SetFillColor(kWhite);
//       leg->AddEntry(h_ZH_15_10_mass        , "MS15", "f"); 
//       leg->AddEntry(h_ZH_40_10_mass        , "MS40", "f"); 
//       leg->AddEntry(h_ZH_55_10_mass        , "MS55", "f"); 
//   leg->Draw("sames");
// 
//   c1->SaveAs("h_ZH_mass.pdf");
//   
//   c1->Clear();
//   h_ZH_15_1_dist->Draw();
//   c1->SaveAs("h_ZH_1_dist.pdf");
//   
//   c1->Clear();
//   h_ZH_15_10_dist->Draw();
//   c1->SaveAs("h_ZH_10_dist.pdf");
//   
//   c1->Clear();
//   h_ZH_15_100_dist->Draw();
//   c1->SaveAs("h_ZH_100_dist.pdf");
//   
//   c1->Clear();
//   h_ZH_15_1000_dist->Draw();
//   c1->SaveAs("h_ZH_1000_dist.pdf");
//   
//   c1->Clear();
//   h_ZH_15_0_dist     ->Draw();
//   h_ZH_15_0p05_dist  ->Draw("sames");
//   h_ZH_15_1_dist     ->Draw("sames");
//   h_ZH_15_10_dist    ->Draw("sames");
//   h_ZH_15_100_dist   ->Draw("sames");
//   h_ZH_15_1000_dist  ->Draw("sames");
//   h_ZH_15_10000_dist ->Draw("sames");
//   h_ZH_15_100000_dist->Draw("sames");
//   c1->SaveAs("h_ZH_dist.pdf");
//   c1->Clear();



