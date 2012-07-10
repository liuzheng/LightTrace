%test
clc
% Define the CoreNum this program will use
CoreNum=7;
% Judge is the CoreNum is current
if matlabpool('size')==CoreNum
    disp('Already Initialized~~');
else
    if matlabpool('size')>0
        matlabpool close
    end
    matlabpool('open','local',CoreNum);
    disp('Ready Go!!!');
end

tic
s=0;
for i=1:100000000
    s=s+1;
end
toc

tic
s=0;
parfor i=1:100000000
    s=s+1;
end
toc


matlabpool close