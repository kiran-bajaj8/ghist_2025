install.packages("dartR")
library(dartR)
library(vcfR)

# load in our biallelic filtered file - i already filtered out the biallelic sites here using bcftools in the command line with the following
# bcftools view -m 2 -M 2 -v snps GHIST_2025_bottleneck.testing.vcf.gz -o GHIST-bottleneck.snps.vcf.gz
# bcftools query -l GHIST_2025_bottleneck.testing.vcf.gz
vcf <- read.vcfR("/Users/madelineeppley/Desktop/GHIST-bottleneck.snps.vcf.gz")

# get it into genlight to prep for dartR
gl_obj <- vcfR2genlight(vcf)

# sfs spectrum
sfs <- gl.sfs(gl_obj, plot.out = TRUE)
