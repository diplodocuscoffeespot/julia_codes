function nw_reg(x,x_cond,y)

#this is the NW Non-parametric regression function

# function nw_regression(x,y)
  xi=std(x)*size(x,1)^(-1/5);
  E_y=zeros(size(x_cond,1),1);
  for i in 1:size(x_cond,1)
    k_h_i=.^(./(.-(x_cond[i,:],x),xi),2)/2;
    k_h=exp(-k_h_i);
    E_y[i,1]=sum(y.*k_h)./sum(k_h);
  end

  return E_y
end
