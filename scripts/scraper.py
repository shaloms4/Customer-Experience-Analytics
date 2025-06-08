from google_play_scraper import Sort, reviews
import csv
from datetime import datetime
import os
import logging

# Set up logging
logging.basicConfig(filename='scraper.log', level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')

# Directory to save data
os.makedirs("data/raw", exist_ok=True)

# Bank apps with Play Store IDs
apps = {
    "Commercial Bank of Ethiopia": "com.combanketh.mobilebanking",
    "Bank of Abyssinia": "com.boa.boaMobileBanking",
    "Dashen Bank": "com.dashen.dashensuperapp"
}

def scrape_reviews_for_all_banks():
    for bank_name, app_id in apps.items():
        logging.info(f"Fetching reviews for {bank_name}...")

        try:
            results, _ = reviews(
                app_id,
                lang='en',
                country='us',
                sort=Sort.NEWEST,
                count=400,
                filter_score_with=None
            )

            timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
            safe_name = bank_name.lower().replace(" ", "_")
            filename = f"data/raw/{safe_name}_reviews_{timestamp}.csv"

            with open(filename, mode='w', newline='', encoding='utf-8') as file:
                writer = csv.DictWriter(file, fieldnames=['review_text', 'rating', 'date', 'bank_name', 'source'])
                writer.writeheader()

                for entry in results:
                    writer.writerow({
                        'review_text': entry['content'],
                        'rating': entry['score'],
                        'date': entry['at'].strftime('%Y-%m-%d'),
                        'bank_name': bank_name,
                        'source': 'Google Play'
                    })

            logging.info(f"Saved {len(results)} reviews to {filename}")
        except Exception as e:
            logging.error(f"Error scraping {bank_name}: {e}")

scrape_reviews_for_all_banks()
