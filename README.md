# NSE Sector Performance Analysis (2022–2024)

## Project Overview
An end-to-end data analytics project analyzing the performance of 6 major sectors 
of the Indian stock market (NSE) over 3 years (2022–2024). The project covers the 
full analytics pipeline — data extraction, storage, analysis, and visualization.

## Tools & Technologies
- **Python (Pandas, yfinance)** — Data extraction and analysis
- **PostgreSQL** — Relational database storage
- **Power BI** — Interactive dashboard and visualization
- **SQLAlchemy** — Python-PostgreSQL connection

## Dataset
- 15 stocks across 6 sectors: Logistics, Auto, Banking, FMCG, IT, Financial Services
- Daily closing prices from January 2022 to December 2024
- Source: Yahoo Finance via yfinance library

## Business Questions Answered
1. Which sectors showed the most growth in the AI era (2022–2024)?
2. Which sectors are most correlated in their performance?
3. Which sector shows the most consistency and regularity in growth?

## Key Findings

- **Auto sector** delivered the highest cumulative return of ~164% over 3 years
- **IT sector** showed a clear AI-era recovery — from -14.4% in 2022-23 to +21.5% in 2024, 
  confirming AI adoption impact on Indian IT stocks
- **Banking and Financial Services** are most correlated (0.68), meaning they move 
  together and offer limited diversification benefit when held together
- **FMCG and Logistics** are least correlated (0.17) — best combination for portfolio 
  diversification
- **FMCG** is the most consistent sector with lowest annualized volatility of 14.9%
- **Financial Services** is most volatile at 25.5%, driven by credit cycle sensitivity
- **Logistics sector** was the worst performer (-17.6%) despite e-commerce boom, 
  suggesting sector-level stock performance doesn't always mirror industry growth narratives
  
## Dashboard Preview

![Main Dashboard](page1.png)
![Correlation Matrix](page2.png)
![Growth Trends](page3.png)

## Dashboard Features
- Interactive date slicer (April 2022 — December 2024)
- Period comparison (2022-23 vs 2024) by sector
- Sector-wise volatility ranking
- Correlation matrix heatmap
- Growth trend lines by sector
- Sector filter tiles for individual analysis

## How to Run
1. Clone the repository
2. Install dependencies: `pip install pandas yfinance sqlalchemy psycopg2`
3. Set up PostgreSQL database named `nse_analysis`
4. Run `stocksfetching.ipynb` top to bottom
5. Connect Power BI to your local PostgreSQL instance
6. Open `powerbi_stock_analysis.pbix`

