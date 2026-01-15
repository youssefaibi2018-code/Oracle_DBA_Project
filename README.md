# Oracle DBA Project: Multitenant Migration & Administration
This project demonstrates my ability to manage an Oracle Multitenant environment (CDB/PDB) and migrate a standalone SQL database into a structured professional architecture.

## 🏗️ Technical Architecture
* **Database Type:** Oracle 19c Multitenant (CDB/PDB)
* **Storage Strategy:** Separate Tablespaces for Data and Indexes (TS_GYM_DATA / TS_GYM_INDEX)
* **Schema Management:** Dedicated Admin User with specific quotas and privileges

## 🛠️ Key DBA Tasks Performed
1. **Infrastructure Setup:** Created a Pluggable Database (PDB) from seed.
2. **Security & Access:** Configured a dedicated schema with limited privileges (Least Privilege Principle).
3. **Storage Optimization:** Implemented custom tablespaces to optimize I/O performance.
4. **Data Verification:** Used `DBA_SEGMENTS` to verify the physical storage of objects.

## 📊 Project Domain: Gym Management System
Includes management of Members, Coaches, and Subscriptions with full CRUD testing and relational integrity.
