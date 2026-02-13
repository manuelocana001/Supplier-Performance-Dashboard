# Supplier Performance Dataset Generator
# Creates 500 realistic purchase orders for supply chain analysis
# Includes: PO numbers, suppliers, dates, costs, delivery performance data

# PURPOSE: Generate synthetic supplier data to build procurement analytics 
# dashboards and practice SQL queries for portfolio Project 1

import pandas as pd
from faker import Faker
import random 
from datetime import datetime, timedelta

# Initialize fake data generator with seed for reproducibility
fake = Faker()
random.seed(42)

# Configuration
num_records = 500
suppliers = [fake.company() for _ in range(20)]  # 20 unique supplier names
categories = ['Electronics', 'Apparel', 'Food & Beverage', 'Raw Materials', 'Packaging']
countries = ['China', 'Vietnam', 'Mexico', 'India', 'Germany', 'Brazil']

# Generate purchase order data
data = []
for i in range(num_records):
    # Generate realistic date ranges
    po_date = datetime(2023, 1, 1) + timedelta(days=random.randint(0, 730))
    promised_delivery = po_date + timedelta(days=random.randint(15, 90))
    actual_delivery = promised_delivery + timedelta(days=random.randint(-10, 20))
    
    # Assign random attributes
    supplier = random.choice(suppliers)
    category = random.choice(categories)
    country = random.choice(countries)
    quantity = random.randint(10, 1000)
    unit_cost = round(random.uniform(5, 500), 2)
    
    # Build record
    data.append({
        'PO_Number': f'PO-{i+1:04d}',
        'Supplier': supplier,
        'Category': category,
        'Country': country,
        'PO_Date': po_date.strftime('%Y-%m-%d'),
        'Promised_Delivery': promised_delivery.strftime('%Y-%m-%d'),
        'Actual_Delivery': actual_delivery.strftime('%Y-%m-%d'),
        'Quantity': quantity,
        'Unit_Cost': unit_cost,
        'Total_Cost': round(quantity * unit_cost, 2)
    })

# Convert to DataFrame and export
df = pd.DataFrame(data)
print(f"Generated {len(df)} purchase orders")
print(df.head())

df.to_csv('supplier_data.csv', index=False)
print("Data saved to supplier_data.csv")
