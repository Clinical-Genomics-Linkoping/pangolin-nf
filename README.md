# pangolin-nf


## Run script
### Step1: load modules/install conda and nextflow 

For conda installation, please visit [conda installation](https://conda.io/projects/conda/en/latest/user-guide/install/index.html) \
For NextFlow installation, please visit [nextflow installation](https://www.nextflow.io/docs/latest/getstarted.html)

```
module load nextflow-20.10.0
```

### Step2: run the following scripts in terminal 
```
sh setup.sh
conda activate Pangolin
nextflow run main.nf
```

## Output file will be generated
{inputName}.pangolin.csv \

Please visit the [wiki page](https://github.com/Clinical-Genomics-Linkoping/pangolin-nf/wiki) to see the output file


## Run second nextflow to combine with database version
```
conda deactivate
nextflow run pangolin2.nextflow
```  

will generate the output files with database information

Pangolin_Final_report_{}.csv

Please visit the [wiki page](https://github.com/Clinical-Genomics-Linkoping/pangolin-nf/wiki) to see the output file
