# MySQL Database & Python Integration

This folder contains MySQL database scripts and Python files for learning and practicing database management and integration.

## Contents

### Database SQL Scripts
- **college_db.sql** - College database schema and sample data
- **college.sql** - Additional college database configuration
- **company_new.sql** - Company database with updated structure
- **employee_db.sql** - Employee database schema
- **hospital_db.sql** - Hospital management database
- **shopping_db.sql** - E-commerce/shopping database
- **student_db.sql** - Student information database

### Python Files
- **mysql.py** - MySQL connector and database operations module
- **intro.py** - Introduction/tutorial for MySQL in Python
- **movie.py** - MovieStream database queries with 22 different SQL operations including SELECT, DISTINCT, LIMIT, WHERE, ORDER BY, GROUP BY, HAVING, and aggregate functions

### Data Files
- **sample.csv** - Sample data for import or reference

## Usage

1. Import SQL files into MySQL using:
   ```sql
   mysql -u username -p database_name < filename.sql
   ```

2. Run Python scripts with:
   ```bash
   python filename.py
   ```

3. Ensure MySQL server is running and Python MySQL connector is installed:
   ```bash
   pip install mysql-connector-python
   ```

## Prerequisites
- MySQL Server installed and running
- Python 3.x
- MySQL Python connector library

## Notes
- Update database connection credentials in Python files as needed
- Review SQL files to understand database schemas before importing
- Use sample.csv for bulk data operations

## MovieStream Database Queries (movie.py)

The **movie.py** script demonstrates 22 SQL queries on the MovieStream_DB:

1. Display all movie details
2. Display Movie_Name and Rating only
3. Display distinct genres
4. Display distinct languages
5. Display top 3 movies by rating
6. Display top 2 highest-rated movies
7. Display movies with rating > 8.0
8. Display movies released after 2020
9. Display Action genre movies
10. Display movies ordered by Rating DESC
11. Display movies ordered by Release_Year ASC
12. Find maximum rating
13. Find minimum duration
14. Find average rating
15. Count movies in each genre (GROUP BY)
16. Find average rating for each language
17. Display genres with more than 1 movie (HAVING clause)
18. Display languages with more than 1 movie (HAVING clause)

Run with: `python movie.py`
