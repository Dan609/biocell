# The RhoA nuclear localization changes in replicative senescence: new evidence from in vitro human mesenchymal stem cells studies
## DANILA BOBKOV; ANASTASIA POLYANSKAYA; ANASTASIA MUSORINA; GALINA POLJANSKAYA

Data and scripts for calculating correlations

The file contains the data of measurements of the Kendall correlation coefficient (bTau), made to assess the colocalization of the PoA protein and cell nuclei in human mechenchymal stem cells. bTau was measured on images obtained using laser scanning confocal microscopy using the ImageJ program.

In the bTau.csv file, the data is presented in a "long" format: each measurement is a separate line, the columns are: Cell - the name of the cell line; Passage - passage number; bTau is the correlation coefficient reflecting the colocalization of RhoA and nuclei; bGal - the number of cells that stain positively for beta-galactosidase, in percent; DoublingTime is the doubling time of the cell population.

Files DF2.csv, FetMSC.csv, MSCWJ-1.csv, and ADH-MSC.csv contain data with averaged bTau values (n = 20 for each passage) for each cell line separately, this files were used for filling NAs using linear extrapolation and interpolation methods.

Files _interpolated.csv contain data with averaged bTau values (n = 20 for each passage) for each cell line separately after applying the methods of linear interpolation and extrapolation.

Files DF2_long.csv, FetMSC_long.csv, MSCWJ-1_long.csv, and ADH-MSC_long.csv contain data with bTau values for each cell line separately, there are also data on beta-galactosidase (percentage of stained cells), with filled NAs using linear extrapolation and interpolation methods, with each measurement assigned one value characteristic of a given passage. These files were used to compute bTau/bGal correlations.

The bTau_bGal_DT_all.csv file contains all the data for the four studied cell lines: bTau colocalization of RhoA and nuclei, beta-galactosidase level, and the doubling time of the cell population at different passages - both the results of measurements in experiments, and the results of applying linear extrapolation and interpolation to fill in the missing values.

In the Computation.R file there is a script in R language for intrapolation and extrapolation of missing values, as well as for calculating the correlation coefficients of Pearson, Spearman, and Kendall.

The RhoA-Nuc_coloc.pzfx file contains the data necessary for drawing graphs in the Graph Pad Prism program.
