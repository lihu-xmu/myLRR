%������ڵ�����;���ת��Ϊͼ�еľ�����ʾ
function result = mapdis(data1,data2)
[m,n] = size(data1);
savedata = ones(m,m)*inf;
for i = 1:m
    savedata(i,i) = 0;
end
for i = 1:m
    for j = 1:n
		savedata(i,data1(i,j)) = data2(i,j);
    end
end
result = savedata;
 