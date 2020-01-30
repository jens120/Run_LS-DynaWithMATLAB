%From  https://github.com/svenholcombe/matlab-lsdyna
%Basic usage (run one simulation):
clc
clear

S = lsdyna.simulation('C:\Temp\FolderToSims\sim1\plates.mat100.k')
S.run
