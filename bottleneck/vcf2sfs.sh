# load modules
module load bcftools/1.21

# Processing and Extracting from the VCF
bcftools view -m 2 -M 2 -v snps GHIST_2025_bottleneck.testing.vcf.gz -o GHIST-bottleneck.snps.vcf.gz

# 
bcftools query -l GHIST-bottleneck.snps.vcf.gz



