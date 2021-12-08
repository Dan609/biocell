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

input <- read.csv('ADH-MCS.csv', sep = ';', dec = ',',
                  skip = 1, 
                  header = FALSE)


# Linear extrapolate and interpolate missing values

input[] <- sapply(input, function (y) {
  
  xs <- seq_along(y)
  Hmisc::approxExtrap(x = xs[!is.na(y)],
                      y = y[!is.na(y)],
                      xout = xs)$y
})


colnames(input) <- c('Passage', 'bTau', 'bGal', 'DoublingTime')

#colnames(input) <- c('Passage', 'bTau', 'bGal')


cor.test(input$bTau, input$bGal,  method = "pearson")
cor.test(input$bTau, input$bGal,  method = "spearman")
cor.test(input$bTau, input$bGal,  method = "kendall")

cor.test(input$bTau, input$Passage,  method = "pearson")
cor.test(input$bTau, input$Passage,  method = "spearman")
cor.test(input$bTau, input$Passage,  method = "kendall")

cor.test(input$bTau, input$DoublingTime,  method = "pearson")
cor.test(input$bTau, input$DoublingTime,  method = "spearman")
cor.test(input$bTau, input$DoublingTime,  method = "kendall")



