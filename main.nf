#!/usr/bin/env nextflow

params.rootDir = "$PWD"

input = Channel.fromPath("$PWD/data/*.{fasta,fa}")

process pangolin {
    publishDir params.output + 'pangolin_out', mode: 'copy'

    input:
    file input

    
    script:
    """
    
    pangolin $input \\
        --outfile ${input}.pangolin.csv --outdir ${params.rootDir}
    """
}
