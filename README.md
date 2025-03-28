# scAF_multiome - Single-nucleus Multiome (paired RNA+ATACseq) Analysis in Atrial Fibrillation

## Abstract
The dysregulation of gene expression programs in the human atria during persistent atrial fibrillation (AF) is not completely understood. Here, we reanalyze bulk RNA-sequencing datasets from two studies (N = 242) and identified 755 differentially expressed genes in left atrial appendages of individuals with persistent AF and non-AF controls. We combined the bulk RNA-sequencing differentially expressed genes with a left atrial appendage single-nucleus multi-omics dataset to assign genes to specific atrial cell types. We found noncoding genes at the IFNG locus (LINC01479, IFNG-AS1) strongly dysregulated in cardiomyocytes. We defined a gene expression signature potentially driven by androgen receptor signaling in cardiomyocytes from individuals with AF. Cell-type-specific gene expression modules suggested an increase in T cell and a decrease in adipocyte and neuronal cell gene expression in AF. Lastly, we showed that reducing NR4A1 expression, a marker of a poorly characterized human atrial fibroblast subtype, fibroblast activation markers, extracellular matrix remodeling and cell proliferation decreased.




## Paper Reference

Leblanc FJA, Yiu CHK, Moreira LM, et al. Single-nucleus multi-omics implicates androgen receptor signaling in cardiomyocytes and NR4A1 regulation in fibroblasts during atrial fibrillation. Nat Cardiovasc Res (2025). [https://doi.org/10.1038/s44161-025-00626-0](https://www.nature.com/articles/s44161-025-00626-0)

## Key Findings

- Identification of cell type-specific gene dysregulation in atrial fibrillation
- Discovery of androgen receptor signaling alterations in cardiomyocytes during AF
- Characterization of a novel fibroblast subtype marked by NR4A1 expression
- Experimentally validated the role of NR4A1 in fibroblast activation and extracellular matrix remodeling

## Analysis Workflow

The analysis is organized into sequential R Markdown files:

1. `00.external_data.rmd`: Download/set up of external datasets
2. `01.make_seurat.rmd`: Create main Seurat object from this study
3. `02.QC_filters.rmd`: Quality control and filtering of single-nucleus data
4. `03.celltype_summary_stats.rmd`: Summary statistics for identified cell types
5. `04.peaks_summary_stats.rmd`: Summary statistics for identified ATAC-seq peaks
6. `05.chromvar.rmd`: Transcription factor motif enrichment analysis using ChromVAR
7. `06.bulk_qc_deg.rmd`: Differential expression analysis of independant bulk RNA-seq data
8. `07.pseudo_deg.rmd`: Pseudobulk differential expression analysis of single-nucleus data 
9. `08.WCGNA.rmd`: Weighted gene co-expression network analysis
10. `09.metacells.rmd`: Metacell creation
11. `10.AF_CM_signature.rmd`: Identifying a cardiomyocyte gene signature of persistent AF
12. `11.FB_subclustering.rmd`: This study's fibroblast state identification
13. `12.FB_atlas_map.rmd`: Multi-dataset integration of cardiac fibroblasts
14. `13.aFB3_validation.rmd`: Validation of fibroblast 3 state in an other AF dataset

## Installation and Setup

This repository uses [renv](https://rstudio.github.io/renv/) for package management. To set up the environment:

```r
# Install renv if not already installed
install.packages("renv")

# Initialize the project with renv
renv::restore()
```

## Data Availability

Raw single-nucleus multiome sequencing data is available at [GSE238242](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE238242). A bulk RNA-seq gene count matrix is available at http://www.mhi-humangenetics.org/en/resources/.