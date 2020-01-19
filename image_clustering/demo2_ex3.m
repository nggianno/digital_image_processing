load('dip_hw_3.mat');
AffArray1 = Image2Graph(d2a);
AffArray2 = Image2Graph(d2b);
rng(1);
ClusterID2_1 = mySpectralClustering(AffArray1,2);
rng(1);
ClusterID3_1 = mySpectralClustering(AffArray1,3);
rng(1);
ClusterID4_1 = mySpectralClustering(AffArray1,4);
rng(1);
ClusterID2_2 = mySpectralClustering(AffArray2,2);
rng(1);
ClusterID3_2 = mySpectralClustering(AffArray2,3);
rng(1);
ClusterID4_2 = mySpectralClustering(AffArray2,4);



        
        
        
        
        