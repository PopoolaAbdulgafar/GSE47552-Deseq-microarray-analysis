# ============================================================
# GSE47552 Microarray Differential Expression Analysis
# Multiple Myeloma vs Normal Plasma Cells
# ============================================================

# 1. Load packages
library(GEOquery)
library(limma)

# 2. Create results directory if it does not exist
if (!dir.exists("results")) {
  dir.create("results")
}

# 3. Download GSE47552
gse <- getGEO("GSE47552")

# Expression matrix
expr <- exprs(gse[[1]])

# Sample metadata
pheno <- pData(gse[[1]])

# 4. Create metadata table
metadata <- data.frame(
  Sample = rownames(pheno),
  Group = pheno$`cell type:ch1`
)

# Display available groups
print(table(metadata$Group))

# 5. Select MM and NPC samples
keep <- metadata$Group %in% c(
  "Multiple Myeloma (MM) plasma cells",
  "Normal Plama Cells (NPC)"
)

expr_sub <- expr[, keep]
meta_sub <- metadata[keep, ]

# 6. Set group order
meta_sub$Group <- factor(
  meta_sub$Group,
  levels = c(
    "Normal Plama Cells (NPC)",
    "Multiple Myeloma (MM) plasma cells"
  )
)

# 7. Create design matrix
design <- model.matrix(~ 0 + meta_sub$Group)

colnames(design) <- c("NPC", "MM")

print(design)

# 8. Fit linear model
fit <- lmFit(expr_sub, design)

# 9. Define MM versus NPC contrast
contrast.matrix <- makeContrasts(
  MMvsNPC = MM - NPC,
  levels = design
)

# 10. Apply contrast
fit2 <- contrasts.fit(fit, contrast.matrix)

# 11. Empirical Bayes moderation
fit2 <- eBayes(fit2)

# 12. Extract differential-expression results
results <- topTable(
  fit2,
  coef = "MMvsNPC",
  number = Inf,
  adjust.method = "BH"
)

# 13. Save results
write.csv(
  results,
  "results/differential_expression_MM_vs_NPC.csv",
  row.names = TRUE
)

# 14. Display top 10 results
top10 <- results[1:10, ]

print(top10)

# 15. Save top 10 results
write.csv(
  top10,
  "results/top10_DEGs.csv",
  row.names = TRUE
)

cat("Analysis completed successfully.\n")
cat("Results saved in the results/ folder.\n")