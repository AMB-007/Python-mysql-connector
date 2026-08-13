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
