require(data.table)
require(Rfast)


if (Sys.info()["user"]== "guilh" ) {
  f <- "E:/SoyBeanData/Genotype/G_score.csv"
} else {
  f <- "G_score.csv"
  
}
geno = fread(f)
geno1 = t(as.matrix(geno[,-1]))+1

Xi_variance = colVars(geno1)

write.csv(Xi_variance, "Xi_variance.csv")

## A faire: 
#   -Load les markers effect
#   -Calculer a_i^2*Var(Xi)
#   -Les plotter comme le ManhattanPlot avec couleurs differentes suivant le chromosome
#   
# 
# 
#   -Plotter les effets des markers pour les differentes variables latentes entre eux

