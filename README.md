# pangolin-nf


## Run script
### Step1: load/install conda and nextflow 
```
module load nextflow-20.10.0
```

### Step2: run the following scripts in terminal 
```
sh setup.sh
conda activate Pangolin
nextflow run main.nf
```

**Output file** - {inputName}.pangolin.csv \

*To view the output file, please visit the [Wiki page](https://github.com/Clinical-Genomics-Linkoping/pangolin-nf/wiki)*


## Run second nextflow to combine with database version
```
conda deactivate
nextflow run pangolin2.nextflow
```  

will generate the **output files** with database information

Pangolin_Lineages_Reference_{}.csv \
Pangolin_Final_report_{}.csv

*To view the output file, please visit the [Wiki page](https://github.com/Clinical-Genomics-Linkoping/pangolin-nf/wiki)*
