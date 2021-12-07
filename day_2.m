%% finished
data = importdata('day_2.txt');

whereTo = data.textdata ; 
howFar = data.data;
Forward = 0;
updown = 0;
aim = 0;
%% part 1
% for i = 1:length(whereTo)
%     if strcmpi(whereTo{i},'forward')
%         Forward = Forward + howFar(i);
%     elseif strcmpi(whereTo{i},'up')
%         updown = updown - howFar(i);
%     elseif strcmpi(whereTo{i},'down')
%         updown = updown + howFar(i);
%     end
% end
% answer = updown*Forward

%% part 2
for i = 1:length(whereTo)
    if strcmpi(whereTo{i},'forward')
        Forward = Forward + howFar(i);
        updown = updown + (aim * howFar(i));
    elseif strcmpi(whereTo{i},'up')
        aim = aim - howFar(i);
    elseif strcmpi(whereTo{i},'down')
        aim = aim + howFar(i);
    end
end
answer = updown * Forward

