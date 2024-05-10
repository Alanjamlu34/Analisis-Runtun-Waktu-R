library(forecast)
library(tseries)

dataUAS = read.csv(file = "Dataset/dataUAS.csv", header = TRUE, sep = ";")
attach(dataUAS)
Xt = (dataUAS$Xt)
# Melakukan tes ADF pada data
adf.test(Xt)

# Menampilkan plot data
par(mfrow=c(1,1))
plot.ts(Xt, lag.max = 200)

# Menampilkan plot ACF dan PACF
par(mfrow=c(2,1))
acf(Xt, lag.max = 120)
pacf(Xt, lag.max = 120)

# Melakukan diferensiasi pada data untuk membuatnya stasioner
differenced_dataUAS <- diff(Xt)

# Menampilkan plot data yang sudah didiferensiasi
par(mfrow=c(1,1))
plot.ts(differenced_dataUAS)

# Melakukan tes ADF pada data yang sudah didiferensiasi
adf.test(differenced_dataUAS)

# Menampilkan plot ACF dan PACF dari data yang sudah didiferensiasi
par(mfrow=c(2,1))
Acf(differenced_dataUAS, lag.max = 200)
Pacf(differenced_dataUAS, lag.max = 200)

# Melakukan diferensiasi musiman pada data yang sudah didiferensiasi
musimUAS = diff(differenced_dataUAS, lag=4)
adf.test(musimUAS)
par(mfrow=c(1,1))
plot.ts(musimUAS)

# Menampilkan plot ACF dan PACF dari data yang sudah didiferensiasi musiman
par(mfrow=c(2,1))
acf(musimUAS, lag.max = 200)
pacf(musimUAS, lag.max = 200)


## estimasi
#estimasi1
estimasi1=arima(Xt,order=c(0,1,0),seasonal=list(order=c(0,1,0),period = 4))
estimasi1
residual1=resid(estimasi1)
shapiro.test(residual1)
Box.test(residual1,lag=6,type="Ljung-Box")

#estimasi2
estimasi2=arima(Xt,order=c(1,1,0),seasonal=list(order=c(0,1,0),period = 4))
estimasi2
residual2=resid(estimasi2)
shapiro.test(residual2)
Box.test(residual2,lag=6,type="Ljung-Box")

#estimasi3
estimasi3=arima(Xt,order=c(1,1,1),seasonal=list(order=c(0,1,0),period = 4))
estimasi3
residual3=resid(estimasi3)
shapiro.test(residual3)
Box.test(residual3,lag=6,type="Ljung-Box")

#estimasi4
estimasi4=arima(Xt,order=c(1,1,0),seasonal=list(order=c(1,1,0),period = 4))
estimasi4
residual4=resid(estimasi4)
shapiro.test(residual4)
Box.test(residual4,lag=6,type="Ljung-Box")

#estimasi5
estimasi5=arima(Xt,order=c(1,1,0),seasonal=list(order=c(0,1,1),period = 4))
estimasi5
residual5=resid(estimasi5)
shapiro.test(residual5)
Box.test(residual5,lag=6,type="Ljung-Box")

#estimasi6
estimasi6=arima(Xt,order=c(1,1,1),seasonal=list(order=c(1,1,0),period = 4))
estimasi6
residual6=resid(estimasi6)
shapiro.test(residual6)
Box.test(residual6,lag=6,type="Ljung-Box")

#estimasi7
estimasi7=arima(Xt,order=c(1,1,0),seasonal=list(order=c(1,1,1),period = 4))
estimasi7
residual7=resid(estimasi7)
shapiro.test(residual7)
Box.test(residual7,lag=6,type="Ljung-Box")

#estimasi8
estimasi8=arima(Xt,order=c(1,1,1),seasonal=list(order=c(0,1,1),period = 4))
estimasi8
residual8=resid(estimasi8)
shapiro.test(residual8)
Box.test(residual8,lag=6,type="Ljung-Box")

#estimasi9
estimasi9=arima(Xt,order=c(1,1,1),seasonal=list(order=c(1,1,1),period = 4))
estimasi9
residual9=resid(estimasi9)
shapiro.test(residual9)
Box.test(residual9,lag=6,type="Ljung-Box")

#estimasi10
estimasi10=arima(Xt,order=c(0,1,1),seasonal=list(order=c(0,1,0),period = 4))
estimasi10
residual10=resid(estimasi10)
shapiro.test(residual10)
Box.test(residual10,lag=6,type="Ljung-Box")

#estimasi11
estimasi11=arima(Xt,order=c(0,1,1),seasonal=list(order=c(1,1,0),period = 4))
estimasi11
residual11=resid(estimasi11)
shapiro.test(residual11)
Box.test(residual11,lag=6,type="Ljung-Box")

#estimasi12
estimasi12=arima(Xt,order=c(0,1,1),seasonal=list(order=c(0,1,1),period = 4))
estimasi12
residual12=resid(estimasi12)
shapiro.test(residual12)
Box.test(residual12,lag=6,type="Ljung-Box")

#estimasi13
estimasi13=arima(Xt,order=c(0,1,1),seasonal=list(order=c(1,1,1),period = 4))
estimasi13
residual13=resid(estimasi13)
shapiro.test(residual13)
Box.test(residual13,lag=6,type="Ljung-Box")

#estimasi14
estimasi14=arima(Xt,order=c(0,1,0),seasonal=list(order=c(1,1,0),period = 4))
estimasi14
residual14=resid(estimasi14)
shapiro.test(residual14)
Box.test(residual14,lag=6,type="Ljung-Box")

#estimasi15
estimasi15=arima(Xt,order=c(0,1,0),seasonal=list(order=c(1,1,1),period = 4))
estimasi15
residual15=resid(estimasi15)
shapiro.test(residual15)
Box.test(residual15,lag=6,type="Ljung-Box")

#estimasi16
estimasi16=arima(Xt,order=c(0,1,0),seasonal=list(order=c(0,1,1),period = 4))
estimasi16
residual16=resid(estimasi16)
shapiro.test(residual16)
Box.test(residual16,lag=6,type="Ljung-Box")

#estimasi17
estimasi17=arima(Xt,order=c(0,1,0),seasonal=list(order=c(0,1,2),period = 4))
estimasi17
residual17=resid(estimasi17)
shapiro.test(residual17)
Box.test(residual17,lag=6,type="Ljung-Box")

#estimasi18
estimasi18=arima(Xt,order=c(1,1,0),seasonal=list(order=c(0,1,2),period = 4))
estimasi18
residual18=resid(estimasi18)
shapiro.test(residual18)
Box.test(residual18,lag=6,type="Ljung-Box")


#estimasi19
estimasi19=arima(Xt,order=c(0,1,1),seasonal=list(order=c(0,1,2),period = 4))
estimasi19
residual19=resid(estimasi19)
shapiro.test(residual19)
Box.test(residual19,lag=6,type="Ljung-Box")

#estimasi20
estimasi20=arima(Xt,order=c(0,1,0),seasonal=list(order=c(1,1,2),period = 4))
estimasi20
residual20=resid(estimasi20)
shapiro.test(residual20)
Box.test(residual20,lag=6,type="Ljung-Box")

#estimasi21
estimasi21=arima(Xt,order=c(1,1,1),seasonal=list(order=c(0,1,2),period = 4))
estimasi21
residual21=resid(estimasi21)
shapiro.test(residual21)
Box.test(residual21,lag=6,type="Ljung-Box")

#estimasi22
estimasi22=arima(Xt,order=c(1,1,0),seasonal=list(order=c(1,1,2),period = 4))
estimasi22
residual22=resid(estimasi22)
shapiro.test(residual22)
Box.test(residual22,lag=6,type="Ljung-Box")

#estimasi23
estimasi23=arima(Xt,order=c(0,1,1),seasonal=list(order=c(1,1,2),period = 4))
estimasi23
residual23=resid(estimasi23)
shapiro.test(residual23)
Box.test(residual23,lag=6,type="Ljung-Box")

#estimasi24
estimasi24=arima(Xt,order=c(1,1,1),seasonal=list(order=c(1,1,2),period = 4))
estimasi24
residual24=resid(estimasi24)
shapiro.test(residual24)
Box.test(residual24,lag=6,type="Ljung-Box")

# SAIMA (1,1,1,0,1,2)
library(astsa)
Xt5<-sarima(Xt,1,1,1,0,1,2,4)
Xt5$ttable

## Peramalan
library(astsa)
par(mfrow = c(1, 1))
sarima.for(Xt, n.ahead = 3, 1, 1, 0, 0, 1, 2, 4, main = "Peramalan")

## Perbandingan
library(forecast)
fit <- Arima(Xt, order = c(1, 1, 0), seasonal = list(order = c(0, 1, 2), period = 4))
plot.ts(Xt, col = "red", main = "Perbandingan")
lines(fitted(fit), col = "blue")


