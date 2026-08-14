

import mysql.connector
connector = mysql.connector.connect(
    host="localhost",
    user="root",
    password="abc123",
    database="MovieStream_DB"
)

if connector.is_connected():
    print("database connected")

cursor = connector.cursor()

# Query 5: Display all movie details
print("\n5. Display all movie details:")
cursor.execute("SELECT * FROM movies")
rows = cursor.fetchall()
for row in rows:
    print(row)

# Query 6: Display only Movie_Name and Rating
print("\n6. Display only Movie_Name and Rating:")
cursor.execute("SELECT Movie_name, Rating FROM movies")
rows = cursor.fetchall()
for row in rows:
    print(row)

# Query 7: Display all distinct genres
print("\n7. Display all distinct genres:")
cursor.execute("SELECT DISTINCT Genre FROM movies")
rows = cursor.fetchall()
for row in rows:
    print(row)

# Query 8: Display all distinct languages
print("\n8. Display all distinct languages:")
cursor.execute("SELECT DISTINCT Language FROM movies")
rows = cursor.fetchall()
for row in rows:
    print(row)

# Query 9: Display top 3 movies
print("\n9. Display top 3 movies:")
cursor.execute("SELECT * FROM movies ORDER BY Rating DESC LIMIT 3")
rows = cursor.fetchall()
for row in rows:
    print(row)

# Query 10: Display top 2 highest-rated movies
print("\n10. Display top 2 highest-rated movies:")
cursor.execute("SELECT * FROM movies ORDER BY Rating DESC LIMIT 2")
rows = cursor.fetchall()
for row in rows:
    print(row)

# Query 11: Display movies with rating > 8.0
print("\n11. Display movies with rating > 8.0:")
cursor.execute("SELECT * FROM movies WHERE Rating > 8.0")
rows = cursor.fetchall()
for row in rows:
    print(row)

# Query 12: Display movies released after 2020
print("\n12. Display movies released after 2020:")
cursor.execute("SELECT * FROM movies WHERE Release_year > 2020")
rows = cursor.fetchall()
for row in rows:
    print(row)

# Query 13: Display Action movies
print("\n13. Display Action movies:")
cursor.execute("SELECT * FROM movies WHERE Genre = 'Action'")
rows = cursor.fetchall()
for row in rows:
    print(row)

# Query 14: Display movies ordered by Rating DESC
print("\n14. Display movies ordered by Rating DESC:")
cursor.execute("SELECT * FROM movies ORDER BY Rating DESC")
rows = cursor.fetchall()
for row in rows:
    print(row)

# Query 15: Display movies ordered by Release_Year ASC
print("\n15. Display movies ordered by Release_Year ASC:")
cursor.execute("SELECT * FROM movies ORDER BY Release_year ASC")
rows = cursor.fetchall()
for row in rows:
    print(row)

# Query 16: Find maximum rating
print("\n16. Find maximum rating:")
cursor.execute("SELECT MAX(Rating) FROM movies")
result = cursor.fetchone()
print(f"Maximum Rating: {result[0]}")

# Query 17: Find minimum duration
print("\n17. Find minimum duration:")
cursor.execute("SELECT MIN(Duration_min) FROM movies")
result = cursor.fetchone()
print(f"Minimum Duration: {result[0]} minutes")

# Query 18: Find average rating
print("\n18. Find average rating:")
cursor.execute("SELECT AVG(Rating) FROM movies")
result = cursor.fetchone()
print(f"Average Rating: {result[0]}")

# Query 19: Count movies in each genre (GROUP BY)
print("\n19. Count movies in each genre (GROUP BY):")
cursor.execute("SELECT Genre, COUNT(*) AS movie_count FROM movies GROUP BY Genre")
rows = cursor.fetchall()
for row in rows:
    print(row)

# Query 20: Find average rating for each language
print("\n20. Find average rating for each language:")
cursor.execute("SELECT Language, AVG(Rating) FROM movies GROUP BY Language")
rows = cursor.fetchall()
for row in rows:
    print(row)

# Query 21: Display genres having more than 1 movie (HAVING)
print("\n21. Display genres having more than 1 movie (HAVING):")
cursor.execute("SELECT Genre, COUNT(*) AS movie_count FROM movies GROUP BY Genre HAVING COUNT(*) > 1")
rows = cursor.fetchall()
for row in rows:
    print(row)

# Query 22: Display languages having more than 1 movie (HAVING)
print("\n22. Display languages having more than 1 movie (HAVING):")
cursor.execute("SELECT Language, COUNT(*) AS movie_count FROM movies GROUP BY Language HAVING COUNT(*) > 1")
rows = cursor.fetchall()
for row in rows:
    print(row)

cursor.close()
connector.close()


