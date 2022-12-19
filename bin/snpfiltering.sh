#remove indels
#remove mnps
bcftools view --types snps -m 2 -M 2 --threads 8 -O z microctonus_firstcohort_sample.vcf.gz > microctonus_firstcohort_sample.snps.vcf.gz

