# ecommerce_sales_data
import pandas as pd

# Load dataset
df = pd.read_csv("../dataset/ecommerce_sales_data.csv")

# Convert Order Date to datetime
df["Order Date"] = pd.to_datetime(df["Order Date"])

# Basic dataset preview
print("FIRST 5 ROWS:")
print(df.head())

# Dataset information
print("\nDATASET INFO:")
print(df.info())

# Shape
print("\nROWS AND COLUMNS:")
print(df.shape)

# Missing values
print("\nMISSING VALUES:")
print(df.isnull().sum())

# Duplicate rows
print("\nDUPLICATES:")
print(df.duplicated().sum())

# Statistical summary
print("\nSTATISTICAL SUMMARY:")
print(df.describe())

# Check negative profits
print("\nNEGATIVE PROFIT ROWS:")
print(df[df["Profit"] < 0])

# Create new time columns
df["Year"] = df["Order Date"].dt.year
df["Month"] = df["Order Date"].dt.month
df["Month Name"] = df["Order Date"].dt.month_name()

# Preview updated data
print("\nUPDATED DATA:")
print(df.head())

# Save cleaned dataset
df.to_csv("../dataset/cleaned_ecommerce_sales.csv", index=False)

print("\nCLEANED DATASET SAVED SUCCESSFULLY")