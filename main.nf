#!/usr/bin/env nextflow

params.rootDir = "$PWD/"
params.output = "${params.rootDir}/results/"

input = Channel.fromPath("$PWD/data/*.{fasta,fa}")

process pangolin {
    publishDir params.output + '/pangolin_out', mode: 'copy'

    input:
    file input

    
    script:
    """
    mkdir -p ${params.rootDir}/results
    pangolin $input \\
        --outfile ${input}.pangolin.csv --outdir ${params.rootDir}/results/
    """
}
