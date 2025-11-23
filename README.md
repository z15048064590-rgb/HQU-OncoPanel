# HQU-OncoPanel
华侨大学生物工程2028届在读 | 目标2027暑期燃石/诺禾/药明转正45w+

国内最丝滑的肿瘤NGS Panel一键化分析流程（800+基因） 从fastq到中美双指南临床报告，全程自动化，30分钟出结果

## 一行命令搞定一切（上线后） ```bash docker run -v $(pwd):/data hqd/onco-panel:latest -i *_R1.fastq.gz -o result/
当前已完成
fastp + cutadapt 自动质控去接头  
bwa-mem2 超快比对  
GATK4 Best Practice 变异检测  
Annovar + VEP 双重注释  
TMB / MSI / HRD / LOH 一键计算  
中美双指南自动判读 + 治疗推荐  
PDF + 交互式HTML临床报告  
Docker + Snakemake 零依赖部署

预计2026年2月15日正式上线，敬请期待！求 Star！求 Watch！有问题直接提 Issue，我24小时在线！
