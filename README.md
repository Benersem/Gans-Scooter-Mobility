# 🚀 Gans Scooter Mobility - Data Collection & ETL

## 📌 Overview

Gans is an **e-scooter-sharing startup** aiming to optimize scooter placement in urban areas. While the company promotes sustainable mobility, its operational success largely depends on ensuring scooters are positioned where demand is highest. This project focuses on **data collection and transformation** to help Gans anticipate scooter movement patterns.

## 🎯 Project Objectives

The goal of this project is to **collect external data** to predict scooter movement based on various factors such as:
- Urban geography (e.g., hilly areas impact movement patterns).
- Time-based commuting trends.
- Weather conditions affecting scooter usage.
- Tourist influx based on flight arrivals.

As a **Data Engineer**, my role is to acquire, process, and store relevant datasets to support predictive modeling in the future.

---

## 📊 Project Scope

The project focuses on:
- **Web Scraping**: Extracting structured data on cities from Wikipedia.
- **APIs**: Collecting weather forecasts and flight arrival data.
- **SQL Database**: Storing structured data efficiently.
- **ETL Process**: Extracting, transforming, and loading the data for further analysis.

---

## 🏗️ Project Structure

📂 Gans-Scooter-Mobility  
│── 📂 data  
│    ├── cities.sql  
│    ├── schema.png  
│── 📂 notebooks  
│    ├── API_flights.ipynb  
│    ├── API_weather.ipynb  
│    ├── web_scraping.ipynb  
│── .gitignore  
│── requirements.txt  
│── README.md  

---

## 📥 Data Collection

### 🌍 Web Scraping (Cities Data)
To analyze urban mobility, data on various cities was collected using **web scraping**. Since Wikipedia provides comprehensive city-related information, **BeautifulSoup** was used to extract structured data from HTML.

**Challenges & Approach:**
- Wikipedia pages have inconsistent layouts, requiring adaptable code.
- Data was extracted using `find_all()` and `find_next()` methods.
- A function was developed to loop through multiple city pages, storing results in a structured DataFrame.

---

### ☁️ API: Weather Forecast
To understand how weather impacts scooter usage, data was retrieved using the **OpenWeather API**. 

**Process:**
- The **5-day weather forecast** API was used.
- The API response was parsed in **JSON format**.
- Key weather variables (temperature, precipitation, wind speed) were extracted and stored in a DataFrame.

---

### ✈️ API: Flight Arrivals
Tourism is a key factor influencing scooter demand, particularly near airports and major transit hubs. **AeroDataBox API** (accessed via RapidAPI) was used to retrieve **flight arrival data**.

**Approach:**
- The API was queried for **next-day arrivals** to support demand forecasting.
- Data was structured using Python dictionary methods and converted into a DataFrame.

---

## 🗄️ Data Storage

### 💾 Storing Data with MySQL
To facilitate analysis, the collected data (cities, weather, flights) was **stored in a MySQL database**.

**Steps:**
1. Created SQL tables for structured storage.
2. Used `pymysql` for database interactions.
3. Designed an **ETL pipeline** to automate data insertion.

---

## 🔄 ETL Process

The **Extract, Transform, Load (ETL) process** consolidates the collected data for analysis.

**ETL Workflow:**
1. **Extract**:
   - Web Scraping (BeautifulSoup)
   - API Calls (OpenWeather, AeroDataBox)
2. **Transform**:
   - Data Cleaning & Normalization
   - Handling Missing Values
   - Structuring DataFrames
3. **Load**:
   - Insert processed data into MySQL tables.

---

## 🛠️ Challenges & Solutions

- **Handling unstructured Wikipedia data**: Implemented conditional parsing logic.
- **API rate limits**: Optimized requests with appropriate intervals.
- **Storing large datasets**: Ensured efficient indexing in MySQL.

---

## 🔮 Next Steps

- **Data Analysis & Visualization** to identify mobility trends.
- **Predictive Modeling** for scooter demand forecasting.
- **Optimization Strategies** for scooter reallocation.

---

## 🚀 Technologies Used

- **Python** 🐍 (for scripting and automation)
- **BeautifulSoup & Scrapy** (for web scraping)
- **Requests & JSON** (for API data collection)
- **APIs**: OpenWeather, AeroDataBox
- **Database**: MySQL (SQL Workbench)
- **Pandas & NumPy** (for data transformation)
- **Jupyter Notebook** (for analysis)

---

## 📂 How to Use This Repository

1. Clone the repository:
git clone https://github.com/your-username/Gans-Scooter-Mobility.git
2. Install dependencies:
pip install -r requirements.txt
3. Run individual notebooks (`notebooks/`) to collect and analyze data.

---

## 📢 Author

👤 **Semira Bener**    
🔗 [LinkedIn](https://linkedin.com/in/semira-bener)

