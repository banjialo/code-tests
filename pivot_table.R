library (readxl)

install.packages("pivottabler")

library(pivottabler)
# arguments:  qpvt(dataFrame, rows, columns, calculations, ...)
qpvt(bhmtrains, "TOC", "TrainCategory", "n()") # TOC = Train Operating Company 

pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$addRowDataGroups("PowerType") # D/EMU = Diesel/Electric Multiple Unit, HST=High Speed Train
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$evaluatePivot()
pt