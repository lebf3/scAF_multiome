#!binbash

#SBATCH -t 0-159
#SBATCH -c 10
#SBATCH --mem 32G
#SBATCH --job-name Kallisto.quant.stranded
#SBATCH -o %j.Kallisto.quant.stranded.out
#SBATCH -e %j.Kallisto.quant.stranded.err


module load kallisto/0.46.1

sample='AF3_
AF37_
AF10_
AF18_
AF20_
AF12_
AF32_
AF28_
AF35_
AF64_
AF50_
AF53_
AF40_
AF65_
AF42_
AF9_
AF29_
AF15_
AF11_
AF60_
AF24_
AF61_
AF71_
AF4_
AF22_
AF48_
AF25_
AF67_
AF63_
AF33_
AF38_
AF49_
AF41_
AF46_
AF36_
AF57_
AF14_
AF34_
AF82_
AF30_
AF2_
AF45_
AF44_
AF52_
AF75_
AF69_
AF39_
AF80_
AF23_
AF43_
AF83_
AF31_
AF59_
AF58_
AF68_
AF55_
AF70_
AF62_
AF54_
AF13_
AF19_
AF6_'

for i in $sample; do
        kallisto quant \
        -i hg38_transcriptome/gencode.v32-hg38.idx \
        -o kallisto_quant/stranded/${i} \
        -t 10 \
        -b 100 \
        --rf-stranded \
        fastq/*${i}R1.fastq.gz \
        fastq/*${i}R2.fastq.gz
done