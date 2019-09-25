# Clustering in one dimension – K-means 
x<-c(1,2,6,7,11,12)
y<-c(0,0,0,0,0,0)
plot(x,y) 


# 6 points on the x-axis

km<-kmeans(x,3,nstart=20) # find three clusters
km # print results
wss<-numeric(5) # Within cluster sum of squares
for (k in 1:5) wss[k] <- sum(kmeans(x,k,nstart=20)$withinss)
plot(1:5,wss) # wss versus k clusters
plot(1:5,log(wss)) # log(wss) versus k clusters

# Clustering in one dimension – Hierarchical Clustering
hc<-hclust(d=dist(x), method="complete") # hierarchical clustering
plot(hc) # tree dendogram
rect.hclust(hc,k=3,border="red") # cut the tree at 3 clusters

# Clustering in two dimensions – K-means
xy<-c(0,-4,4,0,-6,-10,-2,-6,10,6,14,10,4,0,0,-4,17,13,13,9,14,10,10,6)
a<-array(xy,dim=c(12,2))
plot(a) # three diamond shapes
km<-kmeans(a,3,nstart=20) # find three clusters
km # print results
wss<-numeric(8) # Within cluster sum of squares
for (k in 1:8) wss[k] <- sum(kmeans(a,k,nstart=20)$withinss)
plot(1:8,wss) # wss versus k clusters

