load('dip_hw_3.mat');
AffArray1 = Image2Graph(d2a);
AffArray2 = Image2Graph(d2b);
rng(1);
NClusterID2_1 = myNCuts(AffArray1,2);
rng(1);
NClusterID3_1 = myNCuts(AffArray1,3);
rng(1);
NClusterID4_1 = myNCuts(AffArray1,4);
rng(1);
NClusterID2_2 = myNCuts(AffArray2,2);
rng(1);
NClusterID3_2 = myNCuts(AffArray2,3);
rng(1);
NClusterID4_2 = myNCuts(AffArray2,4);
