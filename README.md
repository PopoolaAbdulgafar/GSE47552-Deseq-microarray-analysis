GSE47552 Microarray Gene Expression Analysis

Project Overview

This project analyzes the GSE47552 gene-expression dataset from the Gene Expression Omnibus (GEO).

The analysis investigates differences in gene expression between Multiple Myeloma (MM) plasma cells and Normal Plasma Cells (NPC) using the "limma" package in R.

Following differential-expression analysis, the significant genes were investigated using Gene Ontology (GO), KEGG, and Reactome pathway analysis to identify biological processes and pathways associated with the observed gene-expression changes.

---

Biological Question

Which genes are differentially expressed between Multiple Myeloma (MM) and Normal Plasma Cells (NPC), and what biological pathways are associated with these changes?

---

Dataset

- GEO accession: GSE47552
- Data type: Microarray gene-expression data
- Comparison: Multiple Myeloma (MM) vs Normal Plasma Cells (NPC)
- Analysis method: "limma"

The original GSE47552 dataset contains four biological groups:

- Monoclonal Gammopathy of Undetermined Significance (MGUS)
- Multiple Myeloma (MM)
- Normal Plasma Cells (NPC)
- Smoldering Multiple Myeloma (SMM)

For this analysis, MM and NPC samples were selected for differential-expression analysis.

---

Analysis Workflow

The project follows this workflow:

GEO dataset (GSE47552)
        ↓
Data acquisition with GEOquery
        ↓
Sample metadata examination
        ↓
Selection of MM and NPC samples
        ↓
Differential-expression analysis with limma
        ↓
Differentially Expressed Genes (DEGs)
        ↓
 ┌───────────────┬────────────────┬─────────────────┐
 ↓ ↓ ↓
GO enrichment KEGG enrichment Reactome enrichment
                                   ↓
                            Biological interpretation

---

Analysis Performed

1. Data Acquisition

The GSE47552 dataset was obtained from GEO using the "GEOquery" package.

2. Differential Expression Analysis

Differential expression between MM and NPC samples was performed using limma.

The analysis produced statistics including:

- log fold change ("logFC")
- p-value
- adjusted p-value ("adj.P.Val")

Genes with an adjusted p-value below the selected significance threshold were considered significant.

3. Data Visualization

The project includes:

- Volcano plot
- Heatmap
- Principal Component Analysis (PCA)

These visualizations were used to examine differential expression, expression patterns, and sample-level structure.

4. Gene Ontology Enrichment

GO enrichment analysis was performed to identify biological processes and functional categories represented among the significant genes.

5. KEGG Pathway Enrichment

KEGG pathway enrichment was performed to identify biological pathways associated with the significant genes.

A KEGG enrichment dot plot is included in the project results.

6. Reactome Pathway Enrichment

Reactome pathway enrichment was performed using ReactomePA on the significant genes from the differential-expression analysis.

The analysis identified 50 enriched Reactome pathways under the selected enrichment criteria.

The resulting enrichment was visualized using a Reactome dot plot.

7. KEGG REST API Demonstration

The project also includes a separate demonstration of retrieving pathway information from the KEGG REST API using Python.

The human colorectal cancer pathway:

hsa05210

was retrieved from KEGG.

This is included as a KEGG REST API exercise and should not be interpreted as a conclusion that colorectal cancer was discovered from the GSE47552 analysis.

---

Main Results and Figures

Volcano Plot

The volcano plot displays the magnitude and statistical significance of gene-expression changes between MM and NPC samples.

"Volcano Plot" (Results/Volcano_MM_vs_NPC.png)

Heatmap

The heatmap shows expression patterns of selected differentially expressed genes across the analyzed samples.

"Heatmap" (Results/Heatmap_MM_vs_NPC.png)

Principal Component Analysis

PCA was used to examine the overall structure of the expression data and visualize separation between MM and NPC samples.

"PCA" (Results/PCA_MM_vs_NPC.png)

GO Enrichment

GO enrichment was used to identify biological processes and functional categories associated with the significant genes.

"GO Dotplot" (Results/GO_dotplot_MM_vs_NPC.png)

KEGG Enrichment

KEGG enrichment was used to identify biological pathways associated with the significant genes.

"KEGG Dotplot" (Results/KEGG_dotplot_MM_vs_NPC.png)

Reactome Enrichment

Reactome pathway enrichment was performed using ReactomePA.

The resulting dot plot summarizes the enriched Reactome pathways.

"Reactome Enrichment" (Results/reactome_enrichment.png)

---

Biological Interpretation

The differential-expression analysis identified genes that were significantly dysregulated between Multiple Myeloma and Normal Plasma Cells.

The significant genes were subsequently investigated using GO, KEGG, and Reactome pathway enrichment to identify biological processes and pathways associated with the observed expression changes.

The enrichment analyses provide additional biological context beyond the individual differentially expressed genes.

A detailed interpretation of the findings is provided in:

Report/interpretation.md

---

KEGG REST API

The project includes a small Python-based KEGG REST API exercise.

The following pathway was retrieved:

hsa05210 — Colorectal cancer

The relevant files are stored in:

KEGG/
├── hsa05210.txt
└── kegg_retrieval.py

The "hsa05210.txt" file contains the pathway information retrieved from KEGG, while "kegg_retrieval.py" contains the Python code used to access the KEGG REST API.

---

Project Structure

GSE47552-project/
│
├── README.md
├── GSE47552_GitHub.Rproj
├── deseq2analysis.R
├── pipeline.sh
│
├── Notebook/
│ └── GSE47552_analysis.Rmd
│
├── Report/
│ ├── methods.md
│ ├── results.md
│ └── interpretation.md
│
├── Results/
│ ├── Volcano_MM_vs_NPC.png
│ ├── Heatmap_MM_vs_NPC.png
│ ├── PCA_MM_vs_NPC.png
│ ├── GO_dotplot_MM_vs_NPC.png
│ ├── KEGG_dotplot_MM_vs_NPC.png
│ └── reactome_enrichment.png
│
└── KEGG/
    ├── hsa05210.txt
    └── kegg_retrieval.py

«Note: The file "deseq2analysis.R" is retained as part of the existing project structure. The GSE47552 differential-expression analysis itself was performed using limma, not DESeq2.»

---

Reproducibility

The main R analysis code is provided in:

deseq2analysis.R

The complete analysis notebook is provided in:

Notebook/GSE47552_analysis.Rmd

The project pipeline is provided in:

pipeline.sh

The KEGG REST API demonstration is provided in:

KEGG/kegg_retrieval.py

The Reactome enrichment was performed using the "ReactomePA" package.

---

Software and Packages

The analysis was performed using R and Python.

R Packages

- GEOquery
- limma
- ggplot2
- pheatmap
- clusterProfiler
- ReactomePA
- reactome.db
- org.Hs.eg.db

Python

- requests

---

Key Skills Demonstrated

This project demonstrates practical experience with:

- Microarray gene-expression analysis
- GEO data retrieval
- Sample metadata handling
- Differential-expression analysis with limma
- Data visualization in R
- Volcano plots
- Heatmaps
- PCA
- Gene Ontology enrichment
- KEGG pathway enrichment
- Reactome pathway enrichment
- ReactomePA
- KEGG REST API
- Python API requests
- Reproducible analysis workflows
- Git/GitHub project organization

---

Reference

The original publication associated with GSE47552 is cited in the project report.

For pathway resources, the analysis uses:

- KEGG
- Reactome
- Gene Ontology

Detailed references are provided in the project report.
Reference

The original publication associated with GSE47552 is cited in the project report.   
