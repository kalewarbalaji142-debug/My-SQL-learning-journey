# My SQL Learning Journey

A collection of MySQL practice files documenting my journey learning SQL from
scratch — covering database fundamentals, keys and relationships, built-in
functions, set operations, and data modification queries. Each file is
commented step-by-step so it can be followed like a mini-tutorial, not just
a set of raw queries.

## 📚 Learning source
Following the SQL tutorial series by **[WsCube Tech](https://www.youtube.com/@wscubetech)**
on YouTube. Concepts and examples are based on that course; all queries were
written and tested independently as practice.

## 📁 Files

| File | Topics covered |
|---|---|
| `INTRO_TO_DATABASE.sql` | Creating a database, creating a table, dropping a database — core DDL basics |
| `PRIMARY_KEY_AND_FOREIGN_KEY.sql` | Primary key vs foreign key concepts, table relationships, `REFERENCES` constraint, `ON DELETE CASCADE` |
| `SQL_FUNCTIONS.sql` | Aggregate functions (`COUNT`, `MIN`, `MAX`, `SUM`, `AVG`), string functions (`LOWER`, `UPPER`, `LENGTH`, `CONCAT`), date functions (`NOW`, `YEAR`, `MONTH`, `DATEDIFF`, `TIMESTAMPDIFF`), math functions (`ROUND`, `FLOOR`, `CEIL`, `MOD`), conditional functions (`IF`) |
| `USE_OF_SELECT.sql` | `SELECT` statement basics — filtering, sorting, and retrieving data |
| `UNION_AND_UNION_ALL.sql` | `UNION` vs `UNION ALL` — combining result sets from multiple queries |
| `UPDATE_AND_DELETE_QUERY.sql` | `UPDATE` and `DELETE` statements for modifying and removing data |

## 🗂️ File format
Each `.sql` file is written as a self-contained, commented walkthrough:
concept explanation first, followed by example queries. Most example
queries are commented out (`--`) so the file can be read as notes or
run selectively in a MySQL client.

## 🚀 How to use
1. Set up a MySQL instance and create a working database (e.g. `startersql`,
   used across these files).
2. Open any `.sql` file and read through the comments for the concept
   explanation.
3. Uncomment and run the example queries against your own table/data to
   practice.

## 📌 Status
Actively updated as I progress through the course — more topics will be
added over time (joins, subqueries, indexes, transactions, etc.).
