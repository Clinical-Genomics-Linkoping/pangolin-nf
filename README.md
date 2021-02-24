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

## Output file will be generated
{inputName}.pangolin.csv \

|taxon|lineage|probability|pangoLEARN_version|status|note|
|------|------|-----|-----------------------|--------|-----|
|MT628701.1|B.1|1|2021-02-06|passed_qc||
|MT628700.1|B.1|1|2021-02-06|passed_qc||
|MT215195.1|B.43|1|2021-02-06|passed_qc||
|MT215194.1|B.43|1|2021-02-06|passed_qc||
|MT215193.1|B.43|1|2021-02-06|passed_qc||
|MT434757.2|B.6|1|2021-02-06|passed_qc||
|MT810119.1|A|1|2021-02-06|passed_qc||
|MT439597.1|B.1.210|1|2021-02-06|passed_qc||
|MT439596.1|B.1.210|1|2021-02-06|passed_qc||
|MT439595.1|B.1.210|1|2021-02-06|passed_qc||
|MT434760.1|B.6|1|2021-02-06|passed_qc||
|MT434758.1|B.1.210|1|2021-02-06|passed_qc||
|MT630432.1|B.1.1.74|1|2021-02-06|passed_qc||
|MT630431.1|B.1.1.74|1|2021-02-06|passed_qc||
|MT630430.1|B.1|1|2021-02-06|passed_qc||
|MT630429.1|B.1|1|2021-02-06|passed_qc||
|MT630428.1|B.1.1.74|1|2021-02-06|passed_qc||
|MT630427.1|B.1.1.74|1|2021-02-06|passed_qc||
|MT630426.1|B.1.1.74|1|2021-02-06|passed_qc||
|MT630425.1|B.1.1.74|1|2021-02-06|passed_qc||
|MT630424.1|B.1|1|2021-02-06|passed_qc||
|MT630423.1|A|1|2021-02-06|passed_qc||
|MT630422.1|B.1.1.74|1|2021-02-06|passed_qc||
|MT630421.1|B.1.36|1|2021-02-06|passed_qc||
|MT582499.1|B.3|1|2021-02-06|passed_qc||
|MT582498.1|B.3|1|2021-02-06|passed_qc||
|MT582497.1|B.3|1|2021-02-06|passed_qc||
|MT582496.1|B.3|1|2021-02-06|passed_qc||
|MT582495.1|B.3|1|2021-02-06|passed_qc||
|MT582494.1|B.3|1|2021-02-06|passed_qc||
|MT582493.1|B.3|1|2021-02-06|passed_qc||
|MT582492.1|B.3|1|2021-02-06|passed_qc||
|MT582491.1|B.3|1|2021-02-06|passed_qc||
|MT582490.1|B.3|1|2021-02-06|passed_qc||
|MT582489.1|B.1.1|1|2021-02-06|passed_qc||
|MT582488.1|B.1|1|2021-02-06|passed_qc||
|MT582487.1|B.1.1.74|1|2021-02-06|passed_qc||
|MT582486.1|B.3|1|2021-02-06|passed_qc||
|MT582485.1|B|1|2021-02-06|passed_qc||
|MT582484.1|B.3|1|2021-02-06|passed_qc||
|MT582483.1|B.3|1|2021-02-06|passed_qc||
|MT582482.1|B.1|1|2021-02-06|passed_qc||
|MT582481.1|B.1.1.74|1|2021-02-06|passed_qc||
|MT582480.1|B.1|1|2021-02-06|passed_qc||
|MT582479.1|B.1|1|2021-02-06|passed_qc||
|MT582478.1|B.1|1|2021-02-06|passed_qc||
|MT582477.1|B.1|1|2021-02-06|passed_qc||
|MT582476.1|B.1|1|2021-02-06|passed_qc||
|MT582475.1|B.1|1|2021-02-06|passed_qc||


## Run second nextflow to combine with database version
```
conda deactivate
nextflow run pangolin2.nextflow
```  

will generate the output files with database information

Pangolin_final_report_{}.csv

|taxon|Lineage|probability|pangoLEARN_version|status|note|Most common countries|Earliest date|Number designated|Number assigned|Description||
|------|------|-----|-----------------------|--------|-----|----|----|----|---|----|-----|
|MT628701.1|B.1|1|2021-02-06|passed_qc||United States of America 46.0%, United Kingdom 13.0%, Canada 5.0%, Spain 4.0%, France 3.0%|2020-01-24|19976|50909|A large European lineage that corresponds to the Italian outbreak.||
|MT628700.1|B.1|1|2021-02-06|passed_qc||United States of America 46.0%, United Kingdom 13.0%, Canada 5.0%, Spain 4.0%, France 3.0%|2020-01-24|19976|50909|A large European lineage that corresponds to the Italian outbreak.||
|MT630430.1|B.1|1|2021-02-06|passed_qc||United States of America 46.0%, United Kingdom 13.0%, Canada 5.0%, Spain 4.0%, France 3.0%|2020-01-24|19976|50909|A large European lineage that corresponds to the Italian outbreak.||
|MT630429.1|B.1|1|2021-02-06|passed_qc||United States of America 46.0%, United Kingdom 13.0%, Canada 5.0%, Spain 4.0%, France 3.0%|2020-01-24|19976|50909|A large European lineage that corresponds to the Italian outbreak.||
|MT630424.1|B.1|1|2021-02-06|passed_qc||United States of America 46.0%, United Kingdom 13.0%, Canada 5.0%, Spain 4.0%, France 3.0%|2020-01-24|19976|50909|A large European lineage that corresponds to the Italian outbreak.||
|MT582488.1|B.1|1|2021-02-06|passed_qc||United States of America 46.0%, United Kingdom 13.0%, Canada 5.0%, Spain 4.0%, France 3.0%|2020-01-24|19976|50909|A large European lineage that corresponds to the Italian outbreak.||
|MT582482.1|B.1|1|2021-02-06|passed_qc||United States of America 46.0%, United Kingdom 13.0%, Canada 5.0%, Spain 4.0%, France 3.0%|2020-01-24|19976|50909|A large European lineage that corresponds to the Italian outbreak.||
|MT582480.1|B.1|1|2021-02-06|passed_qc||United States of America 46.0%, United Kingdom 13.0%, Canada 5.0%, Spain 4.0%, France 3.0%|2020-01-24|19976|50909|A large European lineage that corresponds to the Italian outbreak.||
|MT582479.1|B.1|1|2021-02-06|passed_qc||United States of America 46.0%, United Kingdom 13.0%, Canada 5.0%, Spain 4.0%, France 3.0%|2020-01-24|19976|50909|A large European lineage that corresponds to the Italian outbreak.||
|MT582478.1|B.1|1|2021-02-06|passed_qc||United States of America 46.0%, United Kingdom 13.0%, Canada 5.0%, Spain 4.0%, France 3.0%|2020-01-24|19976|50909|A large European lineage that corresponds to the Italian outbreak.||
|MT582477.1|B.1|1|2021-02-06|passed_qc||United States of America 46.0%, United Kingdom 13.0%, Canada 5.0%, Spain 4.0%, France 3.0%|2020-01-24|19976|50909|A large European lineage that corresponds to the Italian outbreak.||
|MT582476.1|B.1|1|2021-02-06|passed_qc||United States of America 46.0%, United Kingdom 13.0%, Canada 5.0%, Spain 4.0%, France 3.0%|2020-01-24|19976|50909|A large European lineage that corresponds to the Italian outbreak.||
|MT582475.1|B.1|1|2021-02-06|passed_qc||United States of America 46.0%, United Kingdom 13.0%, Canada 5.0%, Spain 4.0%, France 3.0%|2020-01-24|19976|50909|A large European lineage that corresponds to the Italian outbreak.||
|MT215195.1|B.43|1|2021-02-06|passed_qc||Hong_Kong 97.0%, Canada 3.0%|2020-01-30|33|36|Hong Kong lineage||
|MT215194.1|B.43|1|2021-02-06|passed_qc||Hong_Kong 97.0%, Canada 3.0%|2020-01-30|33|36|Hong Kong lineage||
|MT215193.1|B.43|1|2021-02-06|passed_qc||Hong_Kong 97.0%, Canada 3.0%|2020-01-30|33|36|Hong Kong lineage||
|MT434757.2|B.6|1|2021-02-06|passed_qc||India 57.0%, Australia 9.0%, United States of America 6.0%, Malaysia 5.0%, Singapore 4.0%|2020-02-14|719|885|Indian lineage||
|MT434760.1|B.6|1|2021-02-06|passed_qc||India 57.0%, Australia 9.0%, United States of America 6.0%, Malaysia 5.0%, Singapore 4.0%|2020-02-14|719|885|Indian lineage||
|MT810119.1|A|1|2021-02-06|passed_qc||United_Arab_Emirates 18.0%, Germany 13.0%, China 13.0%, United States of America 6.0%, Japan 5.0%|2019-12-30|645|1333|Root of the pandemic lies within lineage A. Many sequences originating from China and many global exports| including to South East Asia Japan South Korea Australia the USA and Europe represented in this lineage|
|MT630423.1|A|1|2021-02-06|passed_qc||United_Arab_Emirates 18.0%, Germany 13.0%, China 13.0%, United States of America 6.0%, Japan 5.0%|2019-12-30|645|1333|Root of the pandemic lies within lineage A. Many sequences originating from China and many global exports| including to South East Asia Japan South Korea Australia the USA and Europe represented in this lineage|
|MT439597.1|B.1.210|1|2021-02-06|passed_qc||India 90.0%, United Kingdom 3.0%, Australia 2.0%, United States of America 1.0%, France 1.0%|2020-03-21|228|345|Indian lineage, Reassigned from B.1.80, split this assignment||
|MT439596.1|B.1.210|1|2021-02-06|passed_qc||India 90.0%, United Kingdom 3.0%, Australia 2.0%, United States of America 1.0%, France 1.0%|2020-03-21|228|345|Indian lineage, Reassigned from B.1.80, split this assignment||
|MT439595.1|B.1.210|1|2021-02-06|passed_qc||India 90.0%, United Kingdom 3.0%, Australia 2.0%, United States of America 1.0%, France 1.0%|2020-03-21|228|345|Indian lineage, Reassigned from B.1.80, split this assignment||
|MT434758.1|B.1.210|1|2021-02-06|passed_qc||India 90.0%, United Kingdom 3.0%, Australia 2.0%, United States of America 1.0%, France 1.0%|2020-03-21|228|345|Indian lineage, Reassigned from B.1.80, split this assignment||
|MT630432.1|B.1.1.74|1|2021-02-06|passed_qc||United Kingdom 49.0%, United States of America 11.0%, Portugal 4.0%, Denmark 4.0%, Russia 3.0%|2020-02-16|227|19620|Northern Irish||
|MT630431.1|B.1.1.74|1|2021-02-06|passed_qc||United Kingdom 49.0%, United States of America 11.0%, Portugal 4.0%, Denmark 4.0%, Russia 3.0%|2020-02-16|227|19620|Northern Irish||
|MT630428.1|B.1.1.74|1|2021-02-06|passed_qc||United Kingdom 49.0%, United States of America 11.0%, Portugal 4.0%, Denmark 4.0%, Russia 3.0%|2020-02-16|227|19620|Northern Irish||
|MT630427.1|B.1.1.74|1|2021-02-06|passed_qc||United Kingdom 49.0%, United States of America 11.0%, Portugal 4.0%, Denmark 4.0%, Russia 3.0%|2020-02-16|227|19620|Northern Irish||
|MT630426.1|B.1.1.74|1|2021-02-06|passed_qc||United Kingdom 49.0%, United States of America 11.0%, Portugal 4.0%, Denmark 4.0%, Russia 3.0%|2020-02-16|227|19620|Northern Irish||
|MT630425.1|B.1.1.74|1|2021-02-06|passed_qc||United Kingdom 49.0%, United States of America 11.0%, Portugal 4.0%, Denmark 4.0%, Russia 3.0%|2020-02-16|227|19620|Northern Irish||
|MT630422.1|B.1.1.74|1|2021-02-06|passed_qc||United Kingdom 49.0%, United States of America 11.0%, Portugal 4.0%, Denmark 4.0%, Russia 3.0%|2020-02-16|227|19620|Northern Irish||
|MT582487.1|B.1.1.74|1|2021-02-06|passed_qc||United Kingdom 49.0%, United States of America 11.0%, Portugal 4.0%, Denmark 4.0%, Russia 3.0%|2020-02-16|227|19620|Northern Irish||
|MT582481.1|B.1.1.74|1|2021-02-06|passed_qc||United Kingdom 49.0%, United States of America 11.0%, Portugal 4.0%, Denmark 4.0%, Russia 3.0%|2020-02-16|227|19620|Northern Irish||
|MT630421.1|B.1.36|1|2021-02-06|passed_qc||Canada 30.0%, India 19.0%, United Kingdom 17.0%, Denmark 9.0%, Saudi_Arabia 4.0%|2020-02-16|1405|4282|Saudi Arabia base, then into UK and Denmark, Australia||
|MT582499.1|B.3|1|2021-02-06|passed_qc||United Kingdom 54.0%, Germany 19.0%, Belgium 4.0%, Australia 3.0%, Denmark 3.0%|2020-02-23|837|1072|A European lineage||
|MT582498.1|B.3|1|2021-02-06|passed_qc||United Kingdom 54.0%, Germany 19.0%, Belgium 4.0%, Australia 3.0%, Denmark 3.0%|2020-02-23|837|1072|A European lineage||
|MT582497.1|B.3|1|2021-02-06|passed_qc||United Kingdom 54.0%, Germany 19.0%, Belgium 4.0%, Australia 3.0%, Denmark 3.0%|2020-02-23|837|1072|A European lineage||
|MT582496.1|B.3|1|2021-02-06|passed_qc||United Kingdom 54.0%, Germany 19.0%, Belgium 4.0%, Australia 3.0%, Denmark 3.0%|2020-02-23|837|1072|A European lineage||
|MT582495.1|B.3|1|2021-02-06|passed_qc||United Kingdom 54.0%, Germany 19.0%, Belgium 4.0%, Australia 3.0%, Denmark 3.0%|2020-02-23|837|1072|A European lineage||
|MT582494.1|B.3|1|2021-02-06|passed_qc||United Kingdom 54.0%, Germany 19.0%, Belgium 4.0%, Australia 3.0%, Denmark 3.0%|2020-02-23|837|1072|A European lineage||
|MT582493.1|B.3|1|2021-02-06|passed_qc||United Kingdom 54.0%, Germany 19.0%, Belgium 4.0%, Australia 3.0%, Denmark 3.0%|2020-02-23|837|1072|A European lineage||
|MT582492.1|B.3|1|2021-02-06|passed_qc||United Kingdom 54.0%, Germany 19.0%, Belgium 4.0%, Australia 3.0%, Denmark 3.0%|2020-02-23|837|1072|A European lineage||
|MT582491.1|B.3|1|2021-02-06|passed_qc||United Kingdom 54.0%, Germany 19.0%, Belgium 4.0%, Australia 3.0%, Denmark 3.0%|2020-02-23|837|1072|A European lineage||
|MT582490.1|B.3|1|2021-02-06|passed_qc||United Kingdom 54.0%, Germany 19.0%, Belgium 4.0%, Australia 3.0%, Denmark 3.0%|2020-02-23|837|1072|A European lineage||
|MT582486.1|B.3|1|2021-02-06|passed_qc||United Kingdom 54.0%, Germany 19.0%, Belgium 4.0%, Australia 3.0%, Denmark 3.0%|2020-02-23|837|1072|A European lineage||
|MT582484.1|B.3|1|2021-02-06|passed_qc||United Kingdom 54.0%, Germany 19.0%, Belgium 4.0%, Australia 3.0%, Denmark 3.0%|2020-02-23|837|1072|A European lineage||
|MT582483.1|B.3|1|2021-02-06|passed_qc||United Kingdom 54.0%, Germany 19.0%, Belgium 4.0%, Australia 3.0%, Denmark 3.0%|2020-02-23|837|1072|A European lineage||
|MT582489.1|B.1.1|1|2021-02-06|passed_qc||United States of America 27.0%, United Kingdom 22.0%, Canada 6.0%, Germany 6.0%, Netherlands 5.0%|2020-02-24|280|2795|Lineage reassigned. Reassigned in the current tree. European lineage with 3 clear SNPs `28881GA`,`28882GA`,`28883GC`||
|MT582485.1|B|1|2021-02-06|passed_qc||United Kingdom 36.0%, United States of America 16.0%, China 13.0%, Spain 4.0%, Singapore 3.0%|2019-12-24|3757|4989|Base of this lineage also lies in China, with many global exports, two distinct SNPs `8782TC` and `28144CT` define this lineage||
