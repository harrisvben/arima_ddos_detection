# Case Study: ARIMA for Anomaly Detection in DDoS Attacks

**DS 4002: Prototyping**

## Case Study Overview

## Contents of the Repository
- `README.md` - Overview of the project and instructions for replication.
- `LICENSE.md` - Specifies the terms of use for this repository.
- `CODE/` - Contains Python and R scripts for data cleaning and analysis.
- `DATA/` - Contains raw and cleaned datasets.

## Software and Platform
### Software Used
- Python 3.12.4, R 4.4.2
- RStudio 2024.9.1.394
### Required Packages
#### Python: 
- `pandas` (data manipulation)
- `numpy` (numerical operations)
- `matplotlib` (visualization)
- `statsmodels` (statistical model)
- `joblib` (parallel computing for calculating min AIC)

#### R:
- `tidyverse` (data manipulation and visualization)
### Platform
- Windows 11 and macOS 15 Sequoia

## Map of Documentation
├── README.md

├── LICENSE.md

├── CODE/

│   ├── adf.R # Augmented Dicky-Fuller Test for Stationarity (assumption for ARIMA)

│   ├── arima-cpu-util.ipynb # create ARIMA model for EC2 CPU Utilization data

│   ├── arima-network-in.ipynb # create ARIMA model for EC2 Network In data

│   ├── arima-request-count.ipynb # create ARIMA model for ELB Request Count data

│   ├── arima-testing-and-notes.ipynb # testing and notes for ARIMA models

├── DATA/

│   ├── data_appendix.pdf # describes dataset

│   ├── ec2_cpu_utilization_53ea38.csv # raw CPU utilization data

│   ├── ec2_network_in_5abac7.csv # raw inbound network traffic data

│   ├── elb_request_count_8c0756.csv # raw request count data



## Instructions for Reproduction
### Step 1: Clone the Repository
### Step 2: Install Dependencies
#### Python:
Install the required packages (list above)
#### R
Install tidyverse package
### Step 3: Obtain and Clean Raw Data 
Data source: https://github.com/numenta/NAB/tree/master/data/realAWSCloudwatch
### Step 4: Run Scripts in Order
#### 1. ADF Test
Run `adf.R`
#### 2. Create ARIMA model
Run `arima-cpu-util.ipynb`, `arima-network-in.ipynb`, and `arima-request-count.ipynb`
#### 3. Compare Results
