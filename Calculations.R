# The analysis of correlations between bTau Kendall correlation coefficients
# calculated for RhoA/Nuclei colocalization in 4 human MSC lines
# Dan Bobkov, 2021
# bobkov@incras.ru
#

# LOAD DATA: select the cell line

input <- read.csv('DF2.csv', sep = ';', dec = ',',
                 skip = 1, 
                 header = FALSE)

# or

input <- read.csv('FetMSC.csv', sep = ';', dec = ',',
                  skip = 1, 
                  header = FALSE)

input <- input[, c(1,2,3)]

# or

input <- read.csv('MSCWJ-1.csv', sep = ';', dec = ',',
                  skip = 1, 
                  header = FALSE)

# or

input <- read.csv('ADH-MSC.csv', sep = ';', dec = ',',
                  skip = 1, 
                  header = FALSE)



# Linear extrapolate and interpolate missing values

input[] <- sapply(input, function (y) {
  
  xs <- seq_along(y)
  Hmisc::approxExtrap(x = xs[!is.na(y)],
                      y = y[!is.na(y)],
                      xout = xs)$y
})

# Rename columns
colnames(input) <- c('Passage', 'bTau', 'bGal', 'DoublingTime') # for DF2, MSCWJ-1, and ADH-MSC
colnames(input) <- c('Passage', 'bTau', 'bGal') # for Fet-MSC

# Save files in csv format
write.csv(input,'DF2_interpolated.csv')
write.csv(input,'FetMSC_interpolated.csv')
write.csv(input,'MSCWJ-1_interpolated.csv')
write.csv(input,'ADH-MSC_interpolated.csv')

# Save files in xlsx format
library("xlsx")

write.xlsx(input, 'DF2_interpolated.xlsx', sheetName = "Sheet1", 
           col.names = TRUE, row.names = TRUE, append = FALSE)

write.xlsx(input, 'FetMSC_interpolated.xlsx', sheetName = "Sheet1", 
           col.names = TRUE, row.names = TRUE, append = FALSE)

write.xlsx(input, 'MSCWJ-1_interpolated.xlsx', sheetName = "Sheet1", 
           col.names = TRUE, row.names = TRUE, append = FALSE)

write.xlsx(input, 'ADH-MSC_interpolated.xlsx', sheetName = "Sheet1", 
           col.names = TRUE, row.names = TRUE, append = FALSE)




# Calculate correlations from data with averaged bTaus
input <- read.csv('DF2_interpolated.csv', sep = ',', dec = '.')
cor.test(input$bTau, input$bGal,  method = "pearson")
cor.test(input$bTau, input$bGal,  method = "spearman")
cor.test(input$bTau, input$bGal,  method = "kendall")

input <- read.csv('FetMSC_interpolated.csv', sep = ',', dec = '.')
cor.test(input$bTau, input$bGal,  method = "pearson")
cor.test(input$bTau, input$bGal,  method = "spearman")
cor.test(input$bTau, input$bGal,  method = "kendall")

input <- read.csv('MSCWJ-1_interpolated.csv', sep = ',', dec = '.')
cor.test(input$bTau, input$bGal,  method = "pearson")
cor.test(input$bTau, input$bGal,  method = "spearman")
cor.test(input$bTau, input$bGal,  method = "kendall")

input <- read.csv('ADH-MSC_interpolated.csv', sep = ',', dec = '.')
cor.test(input$bTau, input$bGal,  method = "pearson")
cor.test(input$bTau, input$bGal,  method = "spearman")
cor.test(input$bTau, input$bGal,  method = "kendall")


# Calculate correlations from data with all bTaus
input <- read.csv('DF2_long.csv', sep = ';', dec = ',')
cor.test(input$bTau, input$bGal,  method = "pearson")
cor.test(input$bTau, input$bGal,  method = "spearman")
cor.test(input$bTau, input$bGal,  method = "kendall")

input <- read.csv('FetMSC_long.csv', sep = ';', dec = ',')
cor.test(input$bTau, input$bGal,  method = "pearson")
cor.test(input$bTau, input$bGal,  method = "spearman")
cor.test(input$bTau, input$bGal,  method = "kendall")

input <- read.csv('MSCWJ-1_long.csv', sep = ';', dec = ',')
cor.test(input$bTau, input$bGal,  method = "pearson")
cor.test(input$bTau, input$bGal,  method = "spearman")
cor.test(input$bTau, input$bGal,  method = "kendall")

input <- read.csv('ADH-MSC_long.csv', sep = ';', dec = ',')
cor.test(input$bTau, input$bGal,  method = "pearson")
cor.test(input$bTau, input$bGal,  method = "spearman")
cor.test(input$bTau, input$bGal,  method = "kendall")

