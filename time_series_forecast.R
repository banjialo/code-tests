library (pacman)

p_load (readr,
        ggplot2,
        forecast,
        fpp2,
        TTR,
        dplyr)

data("AirPassengers")
class(AirPassengers)

#check the dates values
start (AirPassengers)
end(AirPassengers)

#check for missign values
sum(is.na(AirPassengers))

#check the summary
summary (AirPassengers)

#type of dataset
class(AirPassengers)

#plot the data
plot(AirPassengers)



tsdata <- ts(AirPassengers, frequency = 12) 

ddata <- decompose(tsdata, "multiplicative")

plot(ddata)

#ARIMA model
mymodel <- auto.arima(AirPassengers)
mymodel

#plot thje model
plot.ts(mymodel$residuals)

#forcast for the next 10 years
myforecast <- forecast(mymodel, level =c(95), h=10*12)

plot(myforecast)


