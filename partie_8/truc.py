from pyexcel_ods import get_data
data = get_data("excell.ods")
import json
A=json.dumps(data)
del A[1]
print(A)
h = [];
neff1=[];
neff2=[];
neff3=[];
neff4=[];
for i in range(4):
	for j in range(len(A)):
		continue

