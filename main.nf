#!/usr/bin/env nextflow
params.output = "${baseDir}/results/"

input = Channel.fromPath("${baseDir}/data/*.{fasta,fa}")

process pangolin {
    publishDir params.output + '/pangolin_out', mode: 'copy'

    input:
    file input

    
    script:
    """
    mkdir -p ${baseDir}/results/
    pangolin $input \\
        --outfile ${input}.pangolin.csv --outdir $params.output
    """
}
