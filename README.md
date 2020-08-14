# ETL Project Report
Team 13: Maria Dong & Tameka Kuar

## Summary
We gathered data on original TV shows by three major streaming services in the US: **Netflix, Hulu, and Amazon Prime**.
The retrieved data include the show's title, genre, year, writer, IMDB rating, and network.

## Extract & Transform: Data Sources and Clean-up
For the **Netflix** data, we imported a **CSV** from Kaggle (link [here](https://www.kaggle.com/abhimanyudasarwar/netflix-originals)) and used **Pandas** to create a DataFrame. We filtered out irrelevant columns and dropped rows on movies to isolate TV show information, then we used **API calls** with OMDB to pull each show's year, writers, and IMDB rating. Overall, processing the CSV was straightforward and required minimal manipulation.

For the **Hulu** and **Prime** data, we scraped data from Wikipedia pages (link for [Hulu](https://en.wikipedia.org/wiki/List_of_Hulu_original_programming) and [Prime](https://en.wikipedia.org/wiki/List_of_Amazon_original_programming)) using **Pandas**' scraping function. Web scraping yielded a list of dozens of separate tables, so we appended each of them to a master DataFrame for each streaming service. We excluded irrelevant tables such as foreign-language shows, films, and co-productions. We also cleaned rows with information on shows awaiting release. We filtered out irrelevant columns, then we again used OMDB **API calls** to gather relevant information.

## Load: Database Creation
We decided to use a **SQL** database (PostgreSQL) to load our final tables. We did so because our datasets are _relational_ in that they share column values and are comparable to each other. We created blank tables in PostgreSQL, then used **Pandas** again to push our tables to the database.

## How to Run
1. Open PostgreSQL and create a new database called _"etl_db"_.
2. In the database, run the file _"schema.sql"_ to create your tables.
3. Create a file called _"config.py"_ in the repo. Set a variable _"omdb_api"_ equal to your OMDB API key.
4. Open Jupyter Notebook and run _"netflix_notebook.ipynb", "hulu_notebook.ipynb",_ and _"prime_notebook.ipynb"_.
5. The tables should be available in PostgreSQL once the notebooks have finished running.

