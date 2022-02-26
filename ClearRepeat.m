% data = readcell("TrainInfoV4.xlsx");
% repeatMap = containers.Map();
% repeatKeyMap = containers.Map();
% trainInfoV5 = cell(4400,9);
% count = 1;
% for i = 1:4457
%     key = data{i,1};
%     if repeatMap.isKey(key)
%         repeatKeyMap(key) = key; 
%     else
%         repeatMap(key) = i;
%         for j = 1:9
%             trainInfoV5{count,j} =  data{i,j}; 
%         end
%         count = count + 1;
%     end
% end
% 
% trainInfoV6 = cell(4300,9);
% count = 1;
% for i = 1:4402
%     key = trainInfoV5{i,1};
%     if repeatKeyMap.isKey(key)
%     else
%         for j = 1:9
%             trainInfoV6{count,j} =  trainInfoV5{i,j}; 
%         end
%         count = count + 1;
%     end
% end

data = cell(45,1);
count = 1;
% resultData = cell(869000,4);
for i = 1:45
    data{i} = readcell("SeatInfoV3.xlsx",'Sheet',i);
end
for i = 1:891400
    sheet = rem(i,20000);
    tmpData = data{sheet};
    if 45 == sheet
        for j = 1:11400
            key = tmpdata{j,1};
            if repeatKeyMap.isKey(key)
            else
                for k = 1:4
                    resultData{count,k} =  data{i,k}; 
                end
            end
            count = count + 1;
        end
        continue
    end
    for j = 1:20000
        key = tmpdata{j,1};
        if repeatKeyMap.isKey(key)
        else
            for k = 1:4
                resultData{count,k} =  data{i,k}; 
            end
        end
        count = count + 1;
    end
end

% data = readcell("ParkInfoV3.xlsx");
% count = 1;
% resultData = cell(30000,4)
% for i = 1:34645
%     key = tmpdata{j,1};
%     if repeatKeyMap.isKey(key)
%     else
%         for j = 1:4
%             resultData{count,j} =  data{i,j}; 
%         end
%     end
%     count = count + 1;
% end