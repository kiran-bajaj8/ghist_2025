# load modules
module load bcftools/1.21

# Processing and Extracting from the VCF
bcftools view -m 2 -M 2 -v snps GHIST_2025_bottleneck.testing.vcf.gz -o GHIST-bottleneck.snps.vcf.gz

# Creating a Popfile
## display all the samples in the VCF file
bcftools query -l GHIST-bottleneck.snps.vcf.gz

```
sample_1
sample_2
sample_3
sample_4
sample_5
sample_6
sample_7
sample_8
sample_9
sample_10
sample_11
sample_12
sample_13
sample_14
sample_15
sample_16
sample_17
sample_18
sample_19
sample_20
sample_21
sample_22
```

## create the .popfile
vim GHIST-bottleneck.popfile

## add population names (all one population we think, so just assigning everyone to 'pop')
```
sample_1	pop
sample_2	pop
sample_3	pop
sample_4	pop
sample_5	pop
sample_6	pop
sample_7	pop
sample_8	pop
sample_9	pop
sample_10	pop
sample_11	pop
sample_12	pop
sample_13	pop
sample_14	pop
sample_15	pop
sample_16	pop
sample_17	pop
sample_18	pop
sample_19	pop
sample_20	pop
sample_21	pop
sample_22	pop
```

# Generating an SFS Using easySFS
/home/hughes.annab/ghist_2025/easySFS/easySFS.py -i GHIST-bottleneck.snps.vcf.gz -p GHIST-bottleneck.popfile --proj 40 -o GHIST_bottleneck_sfs -a --unfold



