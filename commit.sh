if [ $# -le 3 ]
  then
    echo "Usage: ./commit <filepath> <motifSize> <Delta_time> <choice> <value>"
	echo " choice: 1. For Topk  2. For rangebased "
	echo " value : If choice 1, then enter top k value."
	echo "         If choice 2, enter range value. "
    exit
fi

./Compile/TopKSubgraphMotifsDictSIGMOD $1 $2 $3 $4 $5
./getCounts.sh Mined_Motifs Mined_Motifs_m$2_t$3_v$5



