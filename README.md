### **COMMIT : A Scalable Approach to Mining  Communication Motifs from Dynamic Networks**
Commit tool is used to mine communication motifs from large dynamic networks. Read [our paper](https://dl.acm.org/citation.cfm?id=2737791) for more details. Here we share our *executable file* and a dataset.

-----

#### **How To Run**

```./commit.sh filepath motifSize Delta_time choice value```

* The filepath is the location of single large network file. Graph is stored with edgelist representation. Format: time 0 source_node dest_node
* Motifsize is the maximum size upto which one wants to mine motifs
* Delta_time : The time threshold.
* choice : 1. For Topk  2. For rangebased
* value : If choice 1, then enter top k value, If choice 2, enter range value

The mined motifs are stored in Mined_motifs folder and a summary of counts is generated in Motifs_Mined_m#_k#_t#.txt file.

For example

```./commit.sh Dataset/Facebook.txt 3 60 1 5```


The above command retrieves top 5 frequent motifs of size 3 (edges) with Delta_time as 60. Motif counts are summarized in the created file Mined_Motifs_m3_t60_v5.txt file.

**Note** : The executable file is compatible with Linux systems.

-----
#### **Reference**
If you find our work useful, please consider citing our paper.
* Saket Gurukar, Sayan Ranu, Balaraman Ravindran,"COMMIT : A Scalable Approach to Mining Communication Motifs from Dynamic Networks", in SIGMOD, 2015.


