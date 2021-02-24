#!/usr/bin/env nextflow

/*
Created on Fri Feb 22 11:21:20 2021
  name = 'pangolin-nf'
  author = 'Jyotirmoy Das'
  homePage = 'https://github.com/Clinical-Genomics-Linkoping/pangolin-nf'
  description = 'Pangolin integration in NextFlow'
  mainScript = 'main.nf'
  nextflowVersion = '>=20.10.0'
  version = '0.1.0'
"""*/

params.rootDir = "$PWD"

input = Channel.fromPath("$PWD/data/*.{fasta,fa}")


process pangolin {
    publishDir params.output + 'pangolin_out', mode: 'copy'

    input:
    file input

    
    script:
    """
    pangolin $input \\
        --outfile ${input}.pangolin.csv --outdir ${params.rootDir} \\
        --threads 16 \\
        --max-ambig 0.5 \\
        --min-length 5000 \\
        -v
    """
}
