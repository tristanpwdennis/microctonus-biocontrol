bcftools view ../snpdata/microctonus_fullcohort.snp.rh.vcf.gz -M 2 -m 2 -S ../bin/samples_to_keep.txt | \
bcftools view -q 0.01:minor | \
bcftools filter -e 'INFO/MQ <= 50' | \ 
bcftools filter -e 'INFO/QD <= 10'  | \ 
bcftools filter -e 'FORMAT/DP <= 3'  | \ 
bcftools filter -e 'FORMAT/DP >= 100'  | \
bcftools filter -e 'FORMAT/DP >= 100' -Oz > ../snpdata/mh_fullcohort.snp.filts.vcf.gz
