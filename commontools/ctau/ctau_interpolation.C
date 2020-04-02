#include <TLorentzVector.h>
#include <iostream>
#include "TString.h"
#include "TH1F.h"
#include "TCanvas.h"
#include "THStack.h"
#include "TLegend.h"
#include "TPad.h"
#include "TStyle.h"
#include "TText.h"
#include <fstream>
#include "TFile.h"
#include <fstream>
#include <iomanip>
#include <stdio.h>
#include <cstdlib> /* mkdir */
#include <stdlib.h>     /* getenv */

float targetdist = 2;	
Float_t calculatectauEventWeight( float dist )
{
 float weight, factor;
if (targetdist<10 && 1 < targetdist) {
        factor = 10./targetdist;
        weight = factor*exp(-1*(factor-1)*dist);
}
else if (targetdist<100 && 10 < targetdist) {
        factor = 100./targetdist;
        weight = factor*exp(-.1*(factor-1)*dist);
}

else if (targetdist<1000 && 100< targetdist) {
        factor = 1000./targetdist;
        weight = factor*exp(-.01*(factor-1)*dist);
}
else  {
    std::cerr << "Targetdist out of range. Please read insturction for targetdist range for each SigMC sample." <<std::endl;
   abort();
        }
 return weight;
 }
void ctau_interpolation(TString sample) {
   //Get old file, old tree and set top branch address
   //TFile *oldfile;
   std::vector<float> *llpvX=0;
   std::vector<float> *llpvY=0;
   std::vector<float> *llpvZ=0;
   std::vector<float> *llpDaughtervX=0;
   std::vector<float> *llpDaughtervY=0;
   std::vector<float> *llpDaughtervZ=0;
   std::vector<float> *llpPt=0;
   std::vector<float> *llpEta=0;
   std::vector<float> *llpPhi=0;
   std::vector<float> *llpMass=0;
   TH1F* hTTSF;
   TH1F* hEvents;
   
   TString Path = "root://cmsxrootd.fnal.gov/";
   TString totpath = Path+sample;
   //TString dir = "$HOME";
   //gSystem->ExpandPathName(dir);
   //if (!gSystem->AccessPathName(dir))
   //    {oldfile = new TFile("$HOME/lldjntuple_mc_AOD_1.root");}
   //else {oldfile = new TFile("/home/suho/lldjntuple_mc_AOD_1.root");}
   cout<<"test"<<endl;
   TFile *oldfile = TFile::Open(totpath);
   TTree *oldtree = (TTree*)oldfile->Get("lldjNtuple/EventTree");
   cout<<"test"<<endl;
   oldtree->Print();
   oldtree->SetBranchAddress("llpvX", &llpvX);
   oldtree->SetBranchAddress("llpvY", &llpvY);
   oldtree->SetBranchAddress("llpvZ", &llpvZ);
   oldtree->SetBranchAddress("llpDaughtervX", &llpDaughtervX);
   oldtree->SetBranchAddress("llpDaughtervY", &llpDaughtervY);
   oldtree->SetBranchAddress("llpDaughtervZ", &llpDaughtervZ);
   oldtree->SetBranchAddress("llpPt", &llpPt);
   oldtree->SetBranchAddress("llpEta", &llpEta);
   oldtree->SetBranchAddress("llpPhi", &llpPhi);
   oldtree->SetBranchAddress("llpMass", &llpMass);
   hTTSF = (TH1F*)oldfile->Get("lldjNtuple/hTTSF")->Clone("hTTSF");
   hEvents = (TH1F*)oldfile->Get("lldjNtuple/hEvents")->Clone("hEvents");
   sample.Remove(0, sample.Length()-6);
   TString outfilename = "ctau2_lldjntuple_mc_AOD_"+sample;
   //TFile *newfile = new TFile("/uscms/home/skim2/nobackup/LLDJstandalones_Analysis/ctau/new.root","new");
   TFile *newfile = new TFile(outfilename,"new");
   newfile->mkdir("lldjNtuple");
   newfile->cd("lldjNtuple");
   TTree *newtree = oldtree->CloneTree(0);
   float ctau_eventweight;
   std::vector<float> Decay_dist;
   newtree->Branch("ctau_eventweight", &ctau_eventweight);   
   newtree->Branch("Decay_dist", &Decay_dist);   
   newtree->Print();
 
   for (Int_t i=0;i<oldtree->GetEntries(); i++) {
   oldtree->GetEntry(i);
   ctau_eventweight = 1.0;
   float decaydist1 = 0;
   float decaydist2 = 0;
   Decay_dist.clear();
   TLorentzVector scalar1 (0,0,0,0);
   TLorentzVector scalar2 (0,0,0,0);
   TVector3 mother1,daughter1,diff1 (0,0,0);
   TVector3 mother2,daughter2,diff2 (0,0,0);

   mother1.SetXYZ(llpvX->at(0),llpvY->at(0),llpvZ->at(0));
   daughter1.SetXYZ(llpDaughtervX->at(1),llpDaughtervY->at(1),llpDaughtervZ->at(1));
   diff1.SetXYZ(mother1.X()-daughter1.X(),mother1.Y()-daughter1.Y(),mother1.Z()-daughter1.Z());
   scalar1.SetPtEtaPhiM(llpPt->at(0),llpEta->at(0),llpPhi->at(0),llpMass->at(0));
   decaydist1 = diff1.Mag()/(scalar1.Gamma()*abs(scalar1.Beta()));
   Decay_dist.push_back(decaydist1);
   cout<<decaydist1<<endl;
   ctau_eventweight *= calculatectauEventWeight(decaydist1);

   mother2.SetXYZ(llpvX->at(1),llpvY->at(1),llpvZ->at(1));
   daughter2.SetXYZ(llpDaughtervX->at(3),llpDaughtervY->at(3),llpDaughtervZ->at(3));
   diff2.SetXYZ(mother2.X()-daughter2.X(),mother2.Y()-daughter2.Y(),mother2.Z()-daughter2.Z());
   scalar2.SetPtEtaPhiM(llpPt->at(1),llpEta->at(1),llpPhi->at(1),llpMass->at(1));
   decaydist2 = diff2.Mag()/(scalar2.Gamma()*abs(scalar2.Beta()));
   Decay_dist.push_back(decaydist2);
   ctau_eventweight *= calculatectauEventWeight(decaydist2);

   newtree->Fill();
   }
   newtree->Print();
   newtree->Write();
   hTTSF->Write();
   hEvents->Write();
   //newtree->AutoSave();
   //delete oldfile;
   //delete newfile;
}

