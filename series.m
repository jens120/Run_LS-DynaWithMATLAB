%From  https://github.com/svenholcombe/matlab-lsdyna
%Multiple simulations (in series):
clc
clear

baseFolder = 'C:\Temp\FolderToSims';
for i = 1:6
    simFolder = fullfile(baseFolder,sprintf('sim%d',i));
    S(i) = lsdyna.simulation(fullfile(simFolder,'plates.mat100.k'));
end
S.run % Each simulation will be run, one after the other