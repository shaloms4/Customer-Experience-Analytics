# Customer Experience Analytics

## Project Overview
This project collects and preprocesses customer reviews from the Google Play Store for three major banks. The goal is to create a clean, analysis-ready dataset to support customer experience analytics and insights. The project focuses on automated data collection, robust preprocessing, and maintaining high data quality standards.

## Features & KPIs
- **Automated Web Scraping:**
  - Collects reviews, ratings, dates, and app names using `google-play-scraper`
  - Implements rate limiting and error handling
  - Supports incremental data collection
- **Preprocessing Pipeline:**
  - Removes duplicates and handles missing data
  - Normalizes dates and text formatting
  - Implements data validation checks
- **Clean Dataset:**
  - Outputs standardized CSV files
  - Columns: `review`, `rating`, `date`, `bank`, `source`
  - Ready for analysis and visualization

### Key Performance Indicators
- 1,200+ reviews collected (400+ per bank)
- Less than 5% missing data
- Clean, well-structured CSV dataset
- Organized Git repository with clear commit history
- Automated CI/CD pipeline for data quality checks

## Repository Structure
```
├── data/
│   ├── raw/         # Raw scraped CSV files
│   └── clean/       # Cleaned, preprocessed CSV files
├── notebooks/
│   └── preprocessing.ipynb  # Data cleaning and preprocessing notebook
├── scripts/         # Python scripts for scraping/preprocessing
├── db/             # Database related files and migrations
├── requirements.txt # Python dependencies
├── .gitignore      # Git ignore rules
├── README.md       # Project documentation
└── .github/
    └── workflows/  # CI/CD workflows
```

## Getting Started

### Prerequisites
- Python 3.8 or higher
- pip (Python package manager)
- Git

### Installation
1. **Clone the repository:**
   ```bash
   git clone https://github.com/shaloms4/Customer-Experience-Analytics
   cd Customer-Experience-Analytics
   ```

2. **Create and activate a virtual environment:**
   ```bash
   # Windows
   python -m venv venv
   venv\Scripts\activate

   # Linux/MacOS
   python -m venv venv
   source venv/bin/activate
   ```

3. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

## Data Collection
The project uses `google-play-scraper` to collect reviews with the following specifications:
- Minimum 400 reviews per bank (1,200+ total)
- Data fields collected:
  - Review text
  - Rating (1-5 stars)
  - Date
  - Bank name
  - Source (Google Play Store)
- Raw data is saved as CSV in `data/raw/`

## Data Preprocessing
The preprocessing pipeline in `notebooks/preprocessing.ipynb` performs the following operations:
1. **Data Cleaning:**
   - Remove duplicate reviews
   - Handle missing values
   - Normalize dates to `YYYY-MM-DD` format
   - Standardize text formatting

2. **Data Validation:**
   - Verify data completeness
   - Check for data consistency
   - Validate date formats
   - Ensure rating values are within range

3. **Output:**
   - Cleaned CSV files in `data/clean/`
   - Data quality report
   - Processing statistics

## Methodology

### Data Collection Process
1. **Scraping Configuration:**
   - Configure rate limits to respect API constraints
   - Set up error handling and retry mechanisms
   - Implement logging for monitoring

2. **Data Storage:**
   - Save raw data with timestamps
   - Maintain data versioning
   - Implement backup procedures

### Preprocessing Steps
1. **Data Cleaning:**
   - Remove duplicate entries
   - Handle missing values
   - Normalize text and dates
   - Validate data integrity

2. **Quality Assurance:**
   - Generate data quality reports
   - Verify data completeness
   - Check for anomalies
