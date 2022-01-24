set.seed(1)
data =runif(20,1,10)
data

mean =mean(data)
print(mean)

median =median(data)
print(median)

mode =function(x){
  ux =unique(x)
  ux[which.max(tabulate(match(x,ux)))]
}
result= mode(data)
print(data)
cat('mode ={}',result)

varience = var(data)
standardDeviation = sqrt(var(data))
print(standardDeviation)

hist(data, bins=10,range=c(0,10),edgecolor='black')