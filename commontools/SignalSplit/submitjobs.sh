
doSubmit=true

#Set this in run_jobs.sh and mkdir beforehand
#outDir="/eos/uscms/store/user/ddiaz/2017_ctauReweight/"
#outDir="/eos/uscms/store/group/lpchbb/LLDJntuples/2017_ctauReweight"
#rm -r $outDir
#/eos/uscms/store/user/ddiaz/SignalSplitTest
#mkdir -p $outDir

rm -rf err
rm -rf out
rm -rf log

mkdir -p err
mkdir -p out
mkdir -p log

filesPerJob=1
nTotalJobs=0
samples=( \
#  "2017_4b_ggZH" \
#  "2017_4b_ZH" \
  "2018_4b_ggZH" \
  "2018_4b_ZH" \
)

for sample in ${samples[@]}
do
  nlines=`cat inputLists/${sample}.list | wc -l`
  njobs1=$((nlines/filesPerJob))
  njobs2=$((nlines%filesPerJob))
  if [ $njobs2 -gt 0 ]
  then
    echo adding one
    njobs=$((njobs1+1))
  else  
    echo not adding one
    njobs=$((njobs1))
  fi
  nTotalJobs=$((nTotalJobs+njobs))
  #echo $sample, $nlines
  #echo number of submits, $njobs, $njobs1, $njobs2
  split -l $filesPerJob -d -a 2 --additional-suffix=.list inputLists/${sample}.list ${sample}"_"
  #split -l 5            -d -a 2 --additional-suffix=.list inputLists/2017_ggZH.list 2017_ggZH"_"
  for (( i=0; i<$njobs; i++ ))
  do
    if [ $i -lt 10 ] 
    then
      j=0${i}
    else
      j=$i
    fi
    #echo $j, ${sample}_${j}.list
    file=${sample}_${j}.list
    # write base for submit file
    printf "Universe = vanilla\n" > submitfile
    printf "Executable = run_job.sh\n" >> submitfile
    printf "Should_Transfer_Files = YES \n" >> submitfile
    printf "WhenToTransferOutput = ON_EXIT\n" >> submitfile
    printf "Transfer_Input_Files = SignalSplit.exe, cms_setup.tar.gz, ${sample}_${j}.list \n" >> submitfile
    printf "notify_user = $(whoami)@cern.ch\n" >> submitfile
    printf "x509userproxy = \$ENV(X509_USER_PROXY)\n" >> submitfile
    printf "\n" >> submitfile
    printf "Output = out/SigSplit.\$(Cluster)_\$(Process).stdout\n" >> submitfile
    printf "Error  = err/SigSplit.\$(Cluster)_\$(Process).stderr\n" >> submitfile
    printf "Log    = log/SigSplit.\$(Cluster)_\$(Process).log\n" >> submitfile
    printf "\n" >> submitfile
    printf "RequestMemory = 2000\n" >> submitfile
    printf "\n" >> submitfile
    printf "Arguments = ${file} \n" >>submitfile
    printf "Queue\n">>submitfile
    echo 
    echo made file for ${sample}_${j}.list    
    echo 
    #submit job
    if [ ${doSubmit} = true ]
    then
     condor_submit submitfile
    fi
  done 
  echo
  echo "nTotalJobs submitted:" $nTotalJobs
  #rm *.list
done
