function kdensity(x)
  #using Nadaraya Watson and Silverman Bandwidth, only single variable conditioning
  #estimates a kernel density with gaussian weighting
  fhat=zeros(size(x,1),1);
  #use silverman's rule to estimate the bandwidth
  N=size(x,1);
  xi=std(x)*N^(-1/5);
  for i in 1:N
    k_h=exp(-(.^(((x[i,1]-x)/xi),2)/2))/(2*pi)^(.5);
    fhat[i,1]=sum(k_h)/(N*xi);
  end
  return fhat
end
