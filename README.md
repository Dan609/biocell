# The RhoA nuclear localization changes in replicative senescence: new evidence from in vitro human mesenchymal stem cells studies
## DANILA BOBKOV; ANASTASIA POLYANSKAYA; ANASTASIA MUSORINA; GALINA POLJANSKAYA

Data and scripts for calculating correlations

The file contains the data of measurements of the Kendall correlation coefficient (bTau), made to assess the colocalization of the PoA protein and cell nuclei in human mechenchymal stem cells. bTau was measured on images obtained using laser scanning confocal microscopy using the ImageJ program.

In the bTau.csv file, the data is presented in a "long" format: each measurement is a separate line, the columns are: Cell - the name of the cell line; Passage - passage number; bTau is the correlation coefficient reflecting the colocalization of RhoA and nuclei; bGal - the number of cells that stain positively for beta-galactosidase, in percent; DoublingTime is the doubling time of the cell population.

In the Computation.R file there is a script in R language for intrapolation and extrapolation of missing values, as well as for calculating the correlation coefficients of Pearson, Spearman, and Kendall.
