%% finished
close all
clear all
load ('day_1.mat')
b = data;
a = 0;

%% part 1
% for i = 1:length(b)-1
%     if b(i) < b(i+1)
%        a = a+1;
%     end
% end

%% part 2
for i = 2:length(b)-2
    if b(i-1) < b(i+2)
        a = a + 1;
    end
end