# Customer Experience Analytics

## Project Overview
This project collects and preprocesses customer reviews from the Google Play Store for three major banks. The goal is to create a clean, analysis-ready dataset to support customer experience analytics and insights.

## Features & KPIs
- **Automated Web Scraping:** Collects reviews, ratings, dates, and app names using `google-play-scraper`.
- **Preprocessing Pipeline:** Removes duplicates, handles missing data, and normalizes dates.
- **Clean Dataset:** Outputs a CSV file with columns: `review`, `rating`, `date`, `bank`, `source`.
- **KPIs:**
  - 1,200+ reviews collected (400+ per bank)
  - Less than 5% missing data
  - Clean, well-structured CSV dataset
  - Organized Git repository with clear commit history

## Repository Structure
```
├── data/
│   ├── raw/         # Raw scraped CSV files
│   └── clean/       # Cleaned, preprocessed CSV files
├── notebooks/
│   └── preprocessing.ipynb  # Data cleaning and preprocessing notebook
├── scripts/         # (Optional) Python scripts for scraping/preprocessing
├── requirements.txt # Python dependencies
├── .gitignore       # Git ignore rules
├── README.md        # Project documentation
└── .github/
    └── workflows/   # CI/CD workflows
```

## Setup Instructions
1. **Clone the repository:**
   ```bash
   git clone <your-repo-url>
   cd Customer-Experience-Analytics
   ```
2. **Create a virtual environment and activate it:**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```
3. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

## Data Collection (Web Scraping)
- Uses `google-play-scraper` to collect reviews for three banks.
- Each bank should have at least 400 reviews (1,200+ total).
- Data fields: review text, rating, date, bank name, source.
- Save raw data as CSV in `data/raw/`.

## Data Preprocessing
- Run the Jupyter notebook `notebooks/preprocessing.ipynb` to:
  - Remove duplicates
  - Handle missing data
  - Normalize dates to `YYYY-MM-DD`
  - Output cleaned CSVs to `data/clean/`

## Methodology
- **Scraping:**
  - Used `google-play-scraper` to fetch reviews, ratings, and dates for each bank's app.
  - Ensured at least 400 reviews per bank.
- **Preprocessing:**
  - Dropped rows with missing critical values (`review_text`, `rating`, `date`).
  - Removed duplicate reviews based on text and rating.
  - Normalized all dates to `YYYY-MM-DD` format.
  - Saved cleaned data with columns: `review`, `rating`, `date`, `bank`, `source`.
