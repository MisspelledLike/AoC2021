%% Finished
clear all
close all
data = importdata("day_6.txt");
d = 256 ;

fish = [-1,0, 1, 2, 3, 4, 5, 6, 7, 8; 0 0 0 0 0 0 0 0 0 0];

%find(ismember(data,fish(:,1)))
for i = 1:length (fish(1,:))
    for j = 1:length(data)
        data(j);
        if data(j) == fish(1,i);
            fish(2,i) = fish(2,i) + 1;
        end
    end
end

for i = 0:d

    for j = 1:length(fish)-1
        fish(2,j) = fish(2,j+1);
    end
    fish(2,10) = 0;
    if fish(2,1) ~= 0
        fish(2,8) = fish(2,8) + fish(2,1);
        fish(2,10) = fish(2,1);
    end
end


final = 0;
for i = 2:length(fish)-1
    final = final + fish(2,i);
end
final
