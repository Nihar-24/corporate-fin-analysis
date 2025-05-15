# Corporate Financial Analysis (2020–2025)  

A data engineering project analyzing financial statements for liquidity, profitability, and growth insights._

# Setup 
 
1. Clone the repo:  
   ```cmd```
	git clone https://github.com/Nihar-24/corporate-fin-analysis.git

2. Install dependencies:
	pip install -r scripts/requirements.txt

3. Database Setup:
	Run docs/schema.sql in SQL Server.


4. Directory Structure:
	corporate-fin-analysis/
	├── data_raw/          # Raw financial data (untracked)
	├── data_processed/    # Processed data (untracked)
	├── scripts/           # ETL and analysis scripts
	├── docs/              # Schema diagrams, SQL scripts
	├── tests/             # Test cases
	├── plots/             # Visualizations (PNG/PDF)
	├── .gitignore         # Git exclusion rules
	├── readme.md          # This file
	└── license.txt        # MIT License	