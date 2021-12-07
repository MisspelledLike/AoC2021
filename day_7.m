%% finished

clear all
close all

data = importdata("day_7.txt");


a = 0;
b = 0;
%middel = mean(data)

maximal = max(data);

%% part 1
% eind = (1:maximal) *0;
% for j = 1:maximal
%     for i = 1:length(data)
%         a = abs(data(i) - j);
%         b = b+a;
%     end
%     eind(j) = b;
%     b = 0;
% end

% min(eind)

%% part 2
c = 0;
eind = (1:maximal) *0;
for j = 1:maximal
    for i = 1:length(data)
        a = abs(data(i) - j);
        c = (a*(a+1))/2;
        b = b+c;
    end
    eind(j) = b;
    b = 0;
end
min(eind)

%%formula = n(n+1)/2
