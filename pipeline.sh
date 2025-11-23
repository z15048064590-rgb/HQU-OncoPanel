#!/bin/bash
# HQU-OncoPanel 主流程 v0.9
# 作者：z15048064590-rgb @ 华侨大学生物工程
# 目标：2027暑期45w+转正

echo "=== HQD-OncoPanel 开始运行 ==="
echo "当前时间：$(date)"
echo "目标：燃石医学/诺禾致源/药明康德转正45w+"

# 1. 质控
fastp -i $1 -I $2 -o clean_R1.fq.gz -O clean_R2.fq.gz -h report.html -j report.json --thread 8

# 2. 比对+排序
bwa mem -t 8 hg38.fa clean_R1.fq.gz clean_R2.fq.gz | samtools sort -@ 8 -o aligned.bam -

# 3. GATK变异检测
gatk MarkDuplicates -I aligned.bam -O dedup.bam -M metrics.txt
gatk HaplotypeCaller -R hg38.fa -I dedup.bam -O raw.vcf

echo "=== 全部完成！生成 raw.vcf ==="
echo "30分钟出临床报告指日可待！"
