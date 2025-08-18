# load modules
module load bcftools/1.21

# Processing and Extracting from the VCF
bcftools view -m 2 -M 2 -v snps GHIST_2025_bottleneck.testing.vcf.gz -o GHIST-bottleneck.snps.vcf.gz

# Creating a Popfile
## display all the samples in the VCF file
bcftools query -l GHIST-bottleneck.snps.vcf.gz

# Generating an SFS Using easySFS
easySFS.py -i GHIST-bottleneck.snps.vcf.gz -p GHIST-bottleneck.popfile --proj 40 -o GHIST_bottleneck_sfs -a --unfold



