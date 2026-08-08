Data acquisition

Gene expression data for GSE47552 were downloaded from the NCBI Gene Expression Omnibus (GEO)
database using the GEOquery package in R. The dataset was generated on the GPL6244 Illumina
HumanWG-6 v3.0 expression beadchip platform. Sample metadata were extracted from the phenotype
data and used to define the experimental groups.

Differential expression analysis

The expression matrix was extracted using the exprs() function. Differential gene expression
analysis between Multiple Myeloma (MM) and Normal Plasma Cells (NPC) was performed using the
limma package. A design matrix and contrast matrix were constructed to compare the two groups.
Linear models were fitted using lmFit(), followed by empirical Bayes moderation with eBayes(). 
Differentially expressed genes were identified using an adjusted p-value threshold of 0.05.

Data visualization

An MA plot and volcano plot were generated to visualize differential gene expression. Principal
Component Analysis (PCA) was performed to evaluate sample clustering based on gene expression 
profiles. A heatmap of the top differentially expressed genes was generated using the pheatmap package.

Functional enrichment analysis

Probe IDs were mapped to gene symbols using the GPL6244 platform annotation. Gene Ontology (GO)
Biological Process enrichment and Kyoto Encyclopedia of Genes and Genomes (KEGG) pathway
enrichment analyses were performed using the clusterProfiler package. Enriched GO terms 
and KEGG pathways were visualized using dot plots.

Software

All analyses were performed in R using the packages GEOquery, limma, pheatmap, ggplot2, clusterProfiler, org.Hs.eg.db, and enrichplot.