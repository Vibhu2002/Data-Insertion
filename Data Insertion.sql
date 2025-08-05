Create Publisher table:

CREATE TABLE publisher (
    publisher_id INTEGER PRIMARY KEY,
    name TEXT,
    country TEXT,
    established_year INTEGER
);

INSERT Statements (Handling Nulls and Defaults)

  * Insert complete data:
      INSERT INTO publisher (publisher_id, name, country, established_year)
      VALUES (1, 'Penguin Random House', 'USA', 1927);

  * Insert with missing country:
      INSERT INTO publisher (publisher_id, name, country, established_year)
      VALUES (2, 'HarperCollins', NULL, 1989);

  * Insert with missing established_year:
      INSERT INTO publisher (publisher_id, name, country, established_year)
      VALUES (3, 'Macmillan Publishers', 'UK', NULL);

  * Insert with only name (others as NULL):
      INSERT INTO publisher (publisher_id, name, country, established_year)
      VALUES (4, 'Simon & Schuster', NULL, NULL);

  * Insert with all fields NULL except ID:
      INSERT INTO publisher (publisher_id, name, country, established_year)
      VALUES (5, NULL, NULL, NULL);

 UPDATE Statements (Cleaning and Completing Data)

  * Update missing country for HarperCollins:
      UPDATE publisher
      SET country = 'USA'
      WHERE publisher_id = 2;

  * Update missing established_year for Macmillan:
      UPDATE publisher
      SET established_year = 1843
      WHERE publisher_id = 3;

  * Update name for publisher with ID 5:
      UPDATE publisher
      SET name = 'Oxford University Press', country = 'UK', established_year = 1586
      WHERE publisher_id = 5;

 DELETE Statements (Removing Inconsistent or Unwanted Data)

  * Delete publisher with completely missing data (except ID):
      DELETE FROM publisher
      WHERE name IS NULL AND country IS NULL AND established_year IS NULL;

  * Delete publisher established before 1800 (example condition):
      DELETE FROM publisher
      WHERE established_year < 1800;


