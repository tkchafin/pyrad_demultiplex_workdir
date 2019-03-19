# pyrad_demultiplex_workdir
Template directory for batches of pyRAD demultiplex runs

Add your fastq and barcodes files, which should be named like so:
```
FASTQ file --> $BASE_*.fastq.gz #where *can be anything after the first "_" and ".fastq.gz
BARCODES --> $BASE_barcodes.tsv #where column1 = sample name; column 2 = barcode; separated by tab
$BASE can be anything which does not contain an underscore. 
```

With all fasta/barcodes files named as above, run the batch submit script:
```
./submit_demult_jobs.sh
```

If the barcodes files were made using my xlsx2barcodes.py script, you will first need to clean them up:
```
for file in *.tsv; do ./clean_barcodes.sh $file; done
```

Note that all of this is super specific for my workflow and you will need to adapt it significantly if you want to use it.
