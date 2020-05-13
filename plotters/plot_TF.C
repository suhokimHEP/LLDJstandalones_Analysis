//////////////////////////////////////////////////////////////////  
//   plot TF's, see runTF.sh for example to run
//   Use same inputs as are used for the limits
//////////////////////////////////////////////////////////////////  

#include <iostream>
#include "TString.h"
#include "TH1F.h"
#include "TCanvas.h"
#include "THStack.h"
#include "TLegend.h"
#include "TPad.h"
#include "TStyle.h"
#include "TText.h"
#include "TFile.h"
#include <TLatex.h>
#include <stdio.h>
#include <fstream>
#include <cstdlib> /* mkdir */

#include <stdlib.h>     /* getenv */

using namespace std;

TH1F* rebin(TH1F* h_TF){
  TH1F* dummy = new TH1F("h_TF","h_TF",3,-0.5,2.5) ;

  dummy->SetBinContent(1,h_TF->GetBinContent(1));
  dummy->SetBinContent(2,h_TF->GetBinContent(2));
  dummy->SetBinContent(3,h_TF->GetBinContent(3));
   
  dummy->SetBinError(1,h_TF->GetBinError(1));
  dummy->SetBinError(2,h_TF->GetBinError(2));
  dummy->SetBinError(3,h_TF->GetBinError(3));

  return dummy;
}

void printLatex(TH1F* h_Num,TH1F* h_Denom,TH1F* h_TF, TString FileName, TString histName, TString outDir){

 histName.ReplaceAll("#mu#mu","\\mu\\mu");
 ofstream outFile;
 cout<<FileName<<endl;
 outFile.open(FileName+".slides");

 outFile<<endl;
 outFile<<"\\begin{wframe}{\\vspace{0.2em}$"<<histName<<"$}"<<endl;
 outFile<<"  \\begin{minipage}{0.55\\textwidth}"<<endl;
 outFile<<"    \\begin{minipage}{\\textwidth}"<<endl;
 outFile<<"    \\includegraphics[width=\\textwidth]{"<<outDir<<"/"<<FileName<<".pdf}"<<endl;
 outFile<<"    \\end{minipage}"<<endl;
 outFile<<"    \\begin{minipage}{\\textwidth}"<<endl;
 outFile<<"    \\vspace{-0.75em}"<<endl;
 outFile<<"    \\resizebox{0.9\\textwidth}{!}{"<<endl;
 outFile<<"    \\begin{tabular}{c|c|c}"<<endl;
 outFile<<"      Bin & TF & unc. \\\\"<<endl;
 outFile<<"      \\hline"<<endl;
 outFile<<"      1 & "<<h_TF->GetBinContent(1)<<" & "<<h_TF->GetBinError(1)<<" \\\\"<<endl;
 outFile<<"      2 & "<<h_TF->GetBinContent(2)<<" & "<<h_TF->GetBinError(2)<<" \\\\"<<endl;
 outFile<<"      3 & "<<h_TF->GetBinContent(3)<<" & "<<h_TF->GetBinError(3)<<" \\\\"<<endl;
 outFile<<"    \\end{tabular}"<<endl;
 outFile<<"     }"<<endl;
 outFile<<"    \\end{minipage}"<<endl;
 outFile<<"  \\end{minipage}%"<<endl;
 outFile<<"  \\begin{minipage}{0.55\\textwidth}"<<endl;
 outFile<<"    \\resizebox{0.75\\textwidth}{!}{"<<endl;
 outFile<<"    \\begin{tabular}{c|c|c}"<<endl;
 outFile<<"      \\multicolumn{3}{c}{Numerator} \\\\"<<endl;
 outFile<<"      \\hline"<<endl;
 outFile<<"      Bin & TF & unc. \\\\"<<endl;
 outFile<<"      \\hline"<<endl;
 outFile<<"      1 & "<<h_Num->GetBinContent(1)<<" & "<<h_Num->GetBinError(1)<<" \\\\"<<endl;
 outFile<<"      2 & "<<h_Num->GetBinContent(2)<<" & "<<h_Num->GetBinError(2)<<" \\\\"<<endl;
 outFile<<"      3 & "<<h_Num->GetBinContent(3)<<" & "<<h_Num->GetBinError(3)<<" \\\\"<<endl;
 outFile<<"      \\vspace{2em}"<<endl;
 outFile<<"    \\end{tabular}"<<endl;
 outFile<<"     }"<<endl;
 outFile<<"    \\resizebox{0.75\\textwidth}{!}{"<<endl;
 outFile<<"    \\begin{tabular}{c|c|c}"<<endl;
 outFile<<"      \\multicolumn{3}{c}{Denominator} \\\\"<<endl;
 outFile<<"      \\hline"<<endl;
 outFile<<"      Bin & TF & unc. \\\\"<<endl;
 outFile<<"      \\hline"<<endl;
 outFile<<"      1 & "<<h_Denom->GetBinContent(1)<<" & "<<h_Denom->GetBinError(1)<<" \\\\"<<endl;
 outFile<<"      2 & "<<h_Denom->GetBinContent(2)<<" & "<<h_Denom->GetBinError(2)<<" \\\\"<<endl;
 outFile<<"      3 & "<<h_Denom->GetBinContent(3)<<" & "<<h_Denom->GetBinError(3)<<" \\\\"<<endl;
 outFile<<"    \\end{tabular}"<<endl;
 outFile<<"     }"<<endl;
 outFile<<"  \\end{minipage}"<<endl;
 outFile<<"\\end{wframe}";
 outFile<<endl;
 outFile.close();

}

void plot_TF(TString region_num, TString region_denom, Bool_t dolog){

 TString outDir = "NewTTCR_TF";
 TFile* infile_num   = TFile::Open( region_num+"_nSelectedAODCaloJetTag_log.root"  ) ;
 TFile* infile_denom = TFile::Open( region_denom+"_nSelectedAODCaloJetTag_log.root"  ) ;
 cout<<"infile_num: "<<( region_num+"_nSelectedAODCaloJetTag_log.root"  )<<endl;
 cout<<"infile_denom: "<<( region_denom+"_nSelectedAODCaloJetTag_log.root"  )<<endl;
 

 int canx = 1100;
 int cany = 900;
 float lmarg = 0.12;
 float rmarg = 0.05;
 bool drawSignal = false;
 TCanvas* canvas = new TCanvas("canvas","canvas",canx,cany);

 gStyle->SetOptStat(0);
 gPad->SetLogy(dolog);
 gPad->SetTickx();
 gPad->SetTicky();
 gStyle->SetLineWidth(3);
 gStyle->SetPalette(kBird);

 canvas->Clear();
 canvas->cd();

 float pad_bottom = 0;
 TPad *plotpad  = new TPad("plotpad", "plotpad", 0, pad_bottom, 1, 1);
 plotpad->SetBottomMargin(0.12);
 plotpad->SetLeftMargin(lmarg);
 plotpad->SetRightMargin(rmarg);
 plotpad->SetFrameLineWidth(3);
 plotpad->SetLogy(dolog);
 plotpad->Draw();

 canvas->cd();

 TText* title = new TText(1,1,"") ;
 title->SetTextSize(0.06);
 title->SetTextColor(kBlack);
 title->SetTextAlign(11);
 title->SetTextFont(62);

 TText* extra = new TText(1,1,"") ;
 extra->SetTextSize(0.05);
 extra->SetTextColor(kBlack);
 extra->SetTextAlign(11);
 extra->SetTextFont(52);

 TText* extra2 = new TText(1,1,"") ;
 extra2->SetTextSize(0.03);
 extra2->SetTextColor(kBlack);
 extra2->SetTextAlign(11);
 extra2->SetTextFont(62);

 TText* lumi = new TText(1,1,"") ;
 lumi->SetTextSize(0.05);
 lumi->SetTextColor(kBlack);
 lumi->SetTextAlign(31);
 lumi->SetTextFont(42);


 TH1F* h_TF ;
 TH1F* h_TF_dummy ;

 TH1F* h_Num ;
 TH1F* h_Denom ;

 TH1F* h_light_num ;
 TH1F* h_heavy_num ;
 TH1F* h_light_denom ;
 TH1F* h_heavy_denom ;

 h_heavy_num = (TH1F*)infile_num->Get("heavy")->Clone( "h_heavy_num") ;
 h_light_num = (TH1F*)infile_num->Get("light")->Clone( "h_light_num") ;
 h_heavy_denom = (TH1F*)infile_denom->Get("heavy")->Clone( "h_heavy_denom") ;
 h_light_denom = (TH1F*)infile_denom->Get("light")->Clone( "h_light_denom") ;

 TString Title="";
 TString  histName="";
 //Heavy  TF's
 //TF_{EleMuLow}^{mumu}
 if( region_num.Contains("d_TwoMuDY") && region_denom.Contains("EleMuOSOFL")){
  Title="DY_mumu__EleMuL";
  histName="TF_{EleMuLow}^{#mu#mu}";
  h_Num   = (TH1F*)h_heavy_num  ->Clone(Title);
  h_Denom = (TH1F*)h_heavy_denom->Clone(Title);
 }
 //TF_{EleMuLow}^{ee}
 else if( region_num.Contains("TwoEleDY") && region_denom.Contains("EleMuOSOFL")){
  Title="DY_ee__EleMuL";
  histName="TF_{EleMuLow}^{ee}";
  h_Num   = (TH1F*)h_heavy_num  ->Clone(Title);
  h_Denom = (TH1F*)h_heavy_denom->Clone(Title);
 }
 //TF_{EleMu}^{mumu}
 else if( region_num.Contains("d_TwoMuZH") && region_denom.Contains("EleMuOSOF")){
  Title="ZH_mumu__EleMu";
  histName="TF_{EleMu}^{#mu#mu}";
  h_Num   = (TH1F*)h_heavy_num  ->Clone(Title);
  h_Denom = (TH1F*)h_heavy_denom->Clone(Title);
 }
 //TF_{EleMu}^{ee}
 else if( region_num.Contains("TwoEleZH") && region_denom.Contains("EleMuOSOF")){
  Title="ZH_ee__EleMu";
  histName="TF_{EleMu}^{ee}";
  h_Num   = (TH1F*)h_heavy_num  ->Clone(Title);
  h_Denom = (TH1F*)h_heavy_denom->Clone(Title);
 }
 ///Light TF's
 //TF_{Low}^{ee}
 else if( region_num.Contains("TwoEleZH") && region_denom.Contains("TwoEleDY")){
  Title="ZH_ee__DY_ee";
  histName="TF_{Low}^{ee}";
  h_Num   = (TH1F*)h_light_num  ->Clone(Title);
  h_Denom = (TH1F*)h_light_denom->Clone(Title);
 }
 //TF_{Low}^{ee}
 else if( region_num.Contains("d_TwoMuZH") && region_denom.Contains("d_TwoMuDY")){
  Title="ZH_mumu__DY_mumu";
  histName="TF_{Low}^{#mu#mu}";
  h_Num   = (TH1F*)h_light_num  ->Clone(Title);
  h_Denom = (TH1F*)h_light_denom->Clone(Title);
 }
 else cout<<"unknown TF" <<endl;
 
  h_TF_dummy = (TH1F*)h_Num->Clone(Title);
  h_TF_dummy ->Divide(h_Denom);
  h_TF = rebin(h_TF_dummy);

  canvas->cd();

  Double_t ymax;
  ymax = h_TF->GetMaximum();
  if(dolog){
   h_TF->SetMaximum(50000*ymax);
   h_TF->SetMinimum(1.0e-6);
  }
  else {
   h_TF->SetMaximum(ymax*2);
  } 

  plotpad->cd();
  plotpad->SetGrid();
  TH1F* h_TF_err;
  h_TF_err = (TH1F*)h_TF->Clone("MC stat error");
  h_TF_err->SetFillColorAlpha(kYellow+1, 0.7);
  h_TF_err->SetFillStyle(1001);

  h_TF->SetLineWidth(2);
  h_TF->SetAxisRange(0., 2., histName);
  h_TF->Draw("LP");
  h_TF->SetAxisRange(0., 2., histName);
  h_TF_err->Draw("sames E2");
  h_TF->SetTitle("");
  h_TF->GetYaxis()->SetTitle("MC Transfer Factor:    "+histName);
  h_TF->GetYaxis()->SetTitleSize(40);
  h_TF->GetYaxis()->SetTitleFont(43);
  h_TF->GetYaxis()->SetTitleOffset(1.0);
  h_TF->GetXaxis()->CenterTitle(kFALSE);
  h_TF->GetXaxis()->SetTitleOffset(1.25);
  h_TF->GetXaxis()->SetTitle("N_{j}^{dis}");
  h_TF->GetXaxis()->SetNdivisions(3, kTRUE);;

  title->DrawTextNDC(0.15,0.91,"CMS");
  extra->DrawTextNDC(0.4,0.91,"Preliminary");
  TString lumiText = "117 fb^{-1} (13 TeV)";
  lumi->DrawTextNDC(0.9,0.91,"117/fb (13 TeV)");

  TString FileName;
  if(dolog) FileName = (region_num+"_"+region_denom+"_"+Title+"_log");
  else      FileName = (region_num+"_"+region_denom+"_"+Title);

  printLatex(h_Num, h_Denom, h_TF, FileName, histName, outDir);
  
  canvas->SaveAs(outDir+"/"+FileName+".pdf");

}
