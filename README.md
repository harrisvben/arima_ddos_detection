# Project 2: Evaluating Models for Anomaly Detection in DDoS Attacks

**DS 4002: Prototyping**

**Group 2 - The Predictive Pioneers** 

**Members:** Christine Tsai (leader), Ben Harris, Vance Newsome

## Project Overview
This project compares the effectiveness of different time series modeling techniques in detecting anomalies in system log data that indicate potential DDOS attacks.

## Contents of the Repository
- `README.md` - Overview of the project and instructions for replication.
- `LICENSE.md` - Specifies the terms of use for this repository.
- `SCRIPTS/` - Contains Python and R scripts for data cleaning and analysis.
- `DATA/` - Contains raw and cleaned datasets.
- `OUTPUT/` - Contains tables and figures.

## Software and Platform
### Software Used
- Python 3.12.4, R 4.4.2
- RStudio 2024.9.1.394
### Required Packages
#### Python: 
- `pandas` (data manipulation)
- `numpy` (numerical operations)
- `matplotlib` (visualization)

#### R:
- `tidyverse` (data manipulation and visualization)
### Platform
- Windows 11 and macOS 15 Sequoia

## Map of Documentation
├── README.md

├── LICENSE.md

├── SCRIPTS/

│   ├── anova.ipynb # ANOVA

│   ├── adf.R # Augmented Dicky-Fuller Test for Stationarity (assumption for ARIMA)

├── DATA/

│   ├── data_appendix.pdf # describes dataset

│   ├── ec2_cpu_utilization_53ea38.csv # raw CPU utilization data

│   ├── ec2_network_in_5abac7.csv # raw inbound network traffic data

│   ├── elb_request_count_8c0756.csv # raw request count data

├── OUTPUT/




## Instructions for Reproduction
### Step 1: Clone the Repository
### Step 2: Install Dependencies
#### Python:
Install the required packages (list above)
#### R
Install tidyverse package
### Step 3: Obtain and Clean Raw Data 
Follow the instructions in `DATA/obtain_data`
### Step 4: Run Scripts in Order
#### 1. ADF Test
Run `adf.R`
#### 2. ARIMA model
Run `arima.ipynb`

### Step 5: View Resulting Visualizations in `OUTPUT`
