#!/usr/bin/env nextflow
/*
Created on Fri Feb 22 11:21:20 2021
  name = 'pangolin-nf'
  author = 'Jyotirmoy Das'
  homePage = 'https://github.com/Clinical-Genomics-Linkoping/pangolin-nf'
  description = 'Pangolin integration in NextFlow and updated information from Pangolin database'
  mainScript = 'main.nf'
  nextflowVersion = '>=20.10.0'
  version = '0.1.0'
"""*/


process pyTask {
    echo false
    '''
    #!/usr/bin/env python
    import requests
    import pandas as pd
    from datetime import datetime
    import os
    path = "/home/jyotirmoy/Documents/test1_nf/pangolin-nf/results/" # change result directory path
    os.chdir( path )		

    
    url = 'https://cov-lineages.org/lineages.html'
    html = requests.get(url).content
    df_list = pd.read_html(html)
    df = df_list[-1]
    #print(df)
    df.to_csv('Pangolin_Lineages_Reference_'+ str(datetime.now().strftime('%Y_%m_%d')) + '.csv')

    # Compare the lineage file from Pangolin and reference file
    # If reading from the written CSV file
    #df1=pd.read_csv('Pangolin_Lineages_Reference_2021_02_12_09_23_13.csv')
    df2=pd.read_csv('sequence.fasta.pangolin.csv', sep=",")
    df2.new = df2.rename(columns={'lineage':'Lineage'}, index={'ONE':'one'})

    # If reading from the written CSV file of reference list
    #comparedFile=df2.new.merge(df1, on='Lineage')
    #comparedFile.to_csv('test.csv')

    # If reading from the current work space
    cfile=df2.new.merge(df, on="Lineage")
    cfile.to_csv('Pangolin_Final_Report_' + str(datetime.now().strftime('%Y_%m_%d'))+'.csv', index=False)
    '''    
    }
