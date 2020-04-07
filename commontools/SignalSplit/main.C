#include <iostream>
#include <fstream>
#include <string>
//ROOT
#include <TTree.h>
#include <TChain.h>
#include <TFile.h>
#include <TROOT.h>
//LOCAL
#include <SampleSplit.h>
#include <CommandLineInput.h>
#include <malloc.h>



#define _debug 0

int main(int argc, char** argv)
{
  //Get input file from command line
  // if not present program will quit
  std::string input_list = ParseCommandLine( argc, argv, "input_list");
  if( input_list == "" || input_list == "not-found" )
    {
      std::cerr << "[ERROR]: Provide an input list using --input_list=<your_input_list>.\nExiting programs!!" << std::endl;
      return -1;
    }

//  //Get output file from command line
//  // if not present program will quit
//  std::string output_file = ParseCommandLine( argc, argv, "output_file");
//  if( output_file == ""  || output_file == "not-found" )
//    {
//      std::cerr << "[ERROR]: Provide an input list using --output_file=<your_output_file>.\nExiting programs!!" << std::endl;
//      return -1;
//    }

  //----------------------
  //define main TChain
  //----------------------
  TChain* chain = new TChain("lldjNtuple/EventTree");

  //-----------------------------------------------
  //Start reading input list and concatenate TChain
  //-----------------------------------------------
  std::ifstream ifs (input_list.c_str(), std::ifstream::in);
  std::string current_file_name;
  while( ifs.good() )
    {
      ifs >> current_file_name;
      if(ifs.eof()) break;//exit if end of file is reached

      if( _debug ) std::cout << "[DEBUG]: " << current_file_name << std::endl;
      chain->Add( current_file_name.c_str() );//concatenate all input file into the TChain
    }

  //chain->Print();
  //------------------------------------------
  //Define main object from Make Class
  //Require a valid TChain called <chain>
  //------------------------------------------
  SampleSplit* evt = new SampleSplit( chain );
  evt->SampleName = input_list;
  //evt->fatjet_pt_trh = 250.0;
  //-----------------------------------------
  //Running main Loop for HH analysis
  //-----------------------------------------
  evt->Loop();

  return 0;
}
