# Survival Analysis of Heart Failure Patients

## Project Overview
This project focuses on analyzing survival rates of heart failure patients using **statistical analysis** and **machine learning models**. By leveraging **R programming**, we investigate clinical and demographic factors influencing patient mortality.

The dataset used contains 299 patient records with key health parameters such as:
- **Demographics**: Age, gender, smoking status
- **Health Conditions**: Diabetes, blood pressure, anemia
- **Biomarkers**: Ejection fraction, sodium levels, creatinine levels, platelet count, and CPK levels

## Objective
The goal is to use **data-driven insights** to help healthcare professionals improve risk assessment for heart failure patients. The study applies **exploratory data analysis (EDA)** and **machine learning models** to predict patient survival.

## Research Questions
1. Can we predict the **serum creatinine level** based on age, sex, and smoking status?
2. What is the effect of **diabetes on ejection fraction**, considering other variables such as age and high blood pressure?
3. Can we predict the **rate of platelet count decrease** using variables like age, diabetes, and smoking status?

## Dataset
- **Source**: [Public Library of Science (PLOS ONE)](https://plos.figshare.com/articles/dataset/Survival_analysis_of_heart_failure_patients_A_case_study/5227684/1)
- **Records**: 299 patients (105 women, 194 men)
- **Attributes**: 13 variables related to patient demographics, clinical history, and biomarkers

## Methodology
### **1. Exploratory Data Analysis (EDA)**
- Boxplots, density plots, and bar charts to visualize key health parameters
- Identifying trends in **sodium levels**, **ejection fraction**, and **creatinine levels** by event (death/survival)
- Conducted in **R** using `ggplot2`

### **2. Predictive Modeling**
Two machine learning models were implemented:
- **Logistic Regression** (`glmnet`): Identifies statistically significant predictors of mortality
- **Random Forest** (`randomForest`): Determines feature importance in classification

### **3. Key Findings**
- **Top predictors** of mortality risk:
  - **Time elapsed since last exam**
  - **Ejection fraction**
  - **Creatinine levels**
  - **Age**
- **Random Forest** outperforms **Logistic Regression** in classifying high-risk patients
- Factors like **gender, diabetes, and blood pressure** have lower predictive power

## Technologies Used
- **Programming Language**: R
- **Libraries**: `ggplot2`, `glmnet`, `randomForest`
- **Data Processing**: CSV-based dataset
- **IDE**: RStudio

## How to Run
1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/heart-failure-survival.git
