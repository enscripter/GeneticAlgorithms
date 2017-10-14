%Isaiah Griego
%CS375 Spring 2010
%Homework 5 & 6

function [ outputArray ] = naivegaussianelim( inputArray )

[rows, cols] = size(inputArray);

for c = 1:cols-1
    for i = c+1:rows
        const = inputArray(i,c)/inputArray(c,c);
        inputArray(i,:) = inputArray(i,:)-const*inputArray(c,:);
    end
end

outputArray = zeros(cols-1,1);
for i = cols-1:-1:1
    if (i ~= cols-1)
        for j = cols-1:-1:i+1
            outputArray(i) = outputArray(i)+inputArray(i,j)*outputArray(j);
        end
    end
    outputArray(i) = (inputArray(i,end) - outputArray(i))/inputArray(i,i);
end
end

