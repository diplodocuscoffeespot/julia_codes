function unique_finder(x)
#unique function, only works for vectors right now, update this so that this works
#sorted_x=sort(x);
if size(x,2)>1
  sorted_x=sortrows(x);
  else
    sorted_x=sort(x);
  end

d_x=sum([ones(1,size(x,2));diff(sorted_x)],2);
rp_k=1;
u_x=zeros(Float64,1000,size(x,2));
ender=size(d_x,1);
for k=1:ender
      check=d_x[k,1];
      if check!=0
          u_x[rp_k,:]=sorted_x[k,:];
          rp_k=rp_k+1;
      end
end
#find the non-zero entries and get rid of the zeros
keeper_index=find(sum(u_x,2));
u_x=u_x[keeper_index,:];
return u_x
end
