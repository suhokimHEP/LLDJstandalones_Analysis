rm -f TF_Slides.tex
rm -f *.slides

root -l -b -q 'plot_TF.C("d_TwoMuDY", "EleMuOSOFL", kFALSE)'
root -l -b -q 'plot_TF.C("TwoEleDY" , "EleMuOSOFL", kFALSE)'
root -l -b -q 'plot_TF.C("d_TwoMuZH", "EleMuOSOF", kFALSE)'
root -l -b -q 'plot_TF.C("TwoEleZH" , "EleMuOSOF", kFALSE)'
root -l -b -q 'plot_TF.C("TwoEleZH" , "TwoEleDY", kFALSE)'
root -l -b -q 'plot_TF.C("d_TwoMuZH" , "d_TwoMuDY", kFALSE)'

touch TF_Slides.tex
cat *.slides >> TF_Slides.tex
