%From  https://github.com/svenholcombe/matlab-lsdyna
%Multiple simulations (in parallel):
clc
clear

baseFolder = 'C:\Temp\FolderToSims';
for i = 1:6
    simFolder = fullfile(baseFolder,sprintf('sim%d',i));
    S(i) = lsdyna.simulation(fullfile(simFolder,'plates.mat100.k'));
    S(i).cmdBlocking = false;
end
% Run simulations in parallel using 4 threads. The first 4
% simulations will start in a new command window, and when each is
% complete, it will fire the next simulation to run in the available
% thread.
S.run('threads',4)