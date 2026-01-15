# 🏋️‍♂️ Oracle DBA Project: Gym Management System Migration
This project demonstrates the migration of a standalone SQL database into a professional **Oracle 19c Multitenant Architecture**.

## 🏗️ Technical Architecture (Infrastructure)
* **CDB/PDB:** Implementation of a Pluggable Database (`PDB_GYM`) within a Container Database.
* **Storage Strategy:** Optimized I/O by separating physical storage into dedicated tablespaces:
    * `TS_GYM_DATA`: For all business tables.
    * `TS_GYM_INDEX`: For performance-critical indexes.
* **Schema Management:** Created a dedicated schema `GYM` with specific quotas and administrative privileges.

## 🛠️ Key DBA Tasks Performed
1. **Migration & Import:** Transformed legacy SQL scripts into Oracle-compliant objects.
2. **Security & RBAC:** Applied the **Principle of Least Privilege** for the application user.
3. **Data Integrity:** Established relational constraints (PK/FK) and automated identity columns.
4. **Validation:** Verified physical object storage using `USER_SEGMENTS` and `DBA_TABLESPACES`.

## 📂 Project Structure
* `full_project_migration.sql`: The complete script including infrastructure setup, table creation, and 20+ member data inserts.
