library(forecast)
library(tseries)
## 1
usip = read.csv(file = "DATA USIP2.csv", header = TRUE, sep = ";")
attach(usip)
usip
Xt = (usip$JUMLAH)
Xt
# Melakukan tes ADF pada data
adf.test(Xt)

# Menampilkan plot data
par(mfrow=c(1,1))
plot.ts(Xt)

# Menampilkan plot ACF dan PACF
par(mfrow=c(2,1))
acf(Xt, lag.max = 120)
pacf(Xt, lag.max = 120)

# Melakukan diferensiasi pada data untuk membuatnya stasioner
differenced_usip <- diff(Xt)

# Menampilkan plot data yang sudah didiferensiasi
par(mfrow=c(1,1))
plot.ts(differenced_usip)

# Melakukan tes ADF pada data yang sudah didiferensiasi
adf.test(differenced_usip)

# Menampilkan plot ACF dan PACF dari data yang sudah didiferensiasi
par(mfrow=c(2,1))
Acf(differenced_usip, lag.max = 120)
Pacf(differenced_usip, lag.max = 120)

fit = auto.arima(Xt)
summary(fit)

## estimasi
#estimasi2
estimasi2=arima(Xt,order=c(0,1,0))
estimasi2
residual1=resid(estimasi2)
shapiro.test(residual1)
Box.test(residual1,lag=6,type="Ljung-Box")

#estimasi2
estimasi2=arima(Xt,order=c(1,1,0))
estimasi2
residual2=resid(estimasi2)
shapiro.test(residual2)
Box.test(residual2,lag=6,type="Ljung-Box")

#estimasi3
estimasi3=arima(Xt,order=c(0,1,1))
estimasi3
residual3=resid(estimasi3)
shapiro.test(residual3)
Box.test(residual3,lag=6,type="Ljung-Box")

#estimasi4
estimasi4=arima(Xt,order=c(1,1,1))
estimasi4
residual4=resid(estimasi4)
shapiro.test(residual4)
Box.test(residual4,lag=6,type="Ljung-Box")

## 3. Persamaan
# ARMA (0,1,1)
library(astsa)
Xt3<-sarima(Xt,0,1,1,0,0,0,0)
Xt3$ttable

auto.arima(Xt)

## 4. Peramalan
library(forecast)
# ARIMA (0,1,1)
fit <- Arima(Xt, order = c(0, 1, 1))
forecasted_values <- forecast(fit, h = 7)
forecasted_values
# Plot
plot(forecasted_values)

# ARIMA (1,1,1)
fit <- Arima(Xt, order = c(1, 1, 1))
forecasted_values <- forecast(fit, h = 7)
forecasted_values
# Plot
plot(forecasted_values)

## 5. Perbandingan
# ARIMA (0,1,1)
library(forecast)
par(mfrow=c(1,1))
fit<-Arima(Xt,order=c(0,1,1))
plot.ts(fit$x,col="red")
lines(fitted(fit),col="blue")

#ARIMA (1,1,1)
library(forecast)
par(mfrow=c(1,1))
fit<-Arima(Xt,order=c(1,1,1))
plot.ts(fit$x,col="red")
lines(fitted(fit),col="blue")

      
