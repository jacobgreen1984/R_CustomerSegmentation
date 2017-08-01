# title: rule-based remover 


# �л��� 0�� ��� ���� ��Ģ
agile.tmp <- names(which(apply(inputDt, 2, function(x) max(x, na.rm=TRUE)==min(x, na.rm=TRUE))))

if(length(agile.tmp)>0){
  
  inputDt[, c(agile.tmp):=NULL]
  cat("remove the constant variable(s): ", agile.tmp,"\n")
  
} else cat("the constant variable(s) are not found","\n")


# NA�� 5% �̻��� ��� ���� ��Ģ
agile.tmp <- names(which(colMeans(is.na(inputDt))>=0.05))

if(length(agile.tmp)>0){
  
  inputDt[, c(agile.tmp):=NULL]
  cat("remove the vairable(s) with 5% or more NAs: ", agile.tmp,"\n")
  
} else cat("the vairable(s) with 5% or more NAs are not found","\n")


# factor level�� 10�̻��� ��� ���� ��Ģ
agile.tmp <- names(which(sapply(inputDt, function(x) length(levels(x)))>=10))

if(length(agile.tmp)>0){
  
  inputDt[, c(agile.tmp):=NULL] 
  cat("remove the variable(s) with 10 or more factor levels: ", agile.tmp,"\n")
  
} else cat("the variable(s) with 10 or more factor levels are not found","\n")


rm(list=ls(pattern="agile"))
#cat("done!")










