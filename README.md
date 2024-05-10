# **Time Series Analysis** 
## _(Analisis Runtun Waktu)_
This repository contains two R Time Series projects focused on analyzing different types of data. The techniques used include Moving Average, specifically SARIMA (Seasonal AutoRegressive Integrated Moving Average) and ARIMA (AutoRegressive Integrated Moving Average).

### Project 1: Seasonal Time Series Analysis
In this project, we explore seasonal patterns in time series data.
We’ll apply SARIMA models to capture both the seasonal and non-seasonal components.
The goal is to make accurate predictions based on historical data.
Steps:
1. Data Collection: Gather relevant time series data.
2. Exploratory Data Analysis (EDA): Understand the data distribution, trends, and seasonality.
3. Model Selection: Choose appropriate SARIMA parameters (p, d, q, P, D, Q, s) based on ACF (AutoCorrelation Function) and PACF (Partial AutoCorrelation Function) plots.
4. Model Fitting: Fit the SARIMA model to the data.
5. Model Evaluation: Assess the model’s performance using metrics such as Mean Absolute Error (MAE) or Root Mean Squared Error (RMSE).
6. Forecasting: Generate forecasts for future time points.

### Project 2: Non-Seasonal Time Series Analysis
In this project, we focus on time series data without strong seasonal patterns.
We’ll use ARIMA models to capture the underlying trends and autocorrelation.
Steps:
1. Data Preparation: Clean and preprocess the time series data.
2. Stationarity Check: Ensure the data is stationary (constant mean and variance).
3. ACF and PACF Analysis: Identify appropriate ARIMA parameters.
4. Model Fitting: Fit the ARIMA model to the data.
5. Model Evaluation: Evaluate the model’s accuracy.
6. Prediction: Make predictions for future time points.

### Contents
library
```
forecast
tseries
```
File Descriptions:
- **Submission**: Contains the answers (in Indonesian) and explanations.
- **Dataset**: The dataset used for analysis.
- **R_code**: R code used for analysis. It is recommended to use RStudio as the IDE and don’t forget to update the file path.
- **R_output_markdown**: A markdown file generated from the .R code. This file displays the output of each code line.

## Prediction
- 1st. SARIMA Model
  
  ![image](https://github.com/Alanjamlu34/Analisis-Runtun-Waktu-R/assets/142156489/9ebb206b-3f9a-4b12-9469-575ecba204b2)
  > This is the prediction for the next month (look  at the red dot and line)

- 2nd. ARIMA Model
  
  ![image](https://github.com/Alanjamlu34/Analisis-Runtun-Waktu-R/assets/142156489/07ab721c-ee53-4a5c-8266-3f1cb6f98497)
  > This is the comparation between real time from dataset (red line) and the prediction using ARIMA model (blue line)

>[!NOTE]
> Don’t forget to update the file path
