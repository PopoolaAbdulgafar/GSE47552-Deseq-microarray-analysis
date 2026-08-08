# Results

## Differential Expression

Differential expression analysis was performed comparing Multiple Myeloma (MM) plasma cells with Normal Plasma Cells (NPC) using the limma package.

The analysis identified genes showing significant differences in expression between the two groups. The most significant differentially expressed probes included both negatively and positively regulated features.

## Volcano Plot

The volcano plot summarizes the differential-expression results by displaying log2 fold change against statistical significance. Genes with larger absolute fold changes and stronger statistical significance appear farther from the center and toward the upper part of the plot.

![Volcano plot](../results/volcano.png)

## Heatmap

The heatmap displays the expression patterns of selected differentially expressed genes across the MM and NPC samples. The visualization allows differences in expression patterns between the two biological groups to be observed.

![Heatmap](../results/heatmap.png)

## Principal Component Analysis

PCA was used to examine the overall variation in gene-expression profiles. The distribution of samples in the principal-component space provides an overview of the similarity and separation between MM and NPC samples.

![PCA](../results/PCA.png)

## Gene Ontology Enrichment

GO enrichment analysis was performed to identify biological processes associated with the differentially expressed genes.

![GO dotplot](../results/GO_dotplot.png)

## KEGG Pathway Enrichment

KEGG enrichment analysis was performed to identify biological pathways associated with the differentially expressed genes.

![KEGG dotplot](../results/KEGG_dotplot.png)

## Summary

Together, the differential-expression analysis, PCA, heatmap, GO enrichment, and KEGG pathway analysis provide complementary views of the molecular differences between Multiple Myeloma and Normal Plasma Cells.