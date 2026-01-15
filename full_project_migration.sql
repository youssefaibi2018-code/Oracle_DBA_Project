---------------------------------------------------------
-- 1. ARCHITECTURE SETUP (CDB/PDB)
---------------------------------------------------------
CREATE PLUGGABLE DATABASE PDB_GYM
  ADMIN USER pdbadmin IDENTIFIED BY PdbAdminPwd1
  FILE_NAME_CONVERT = ('/pdbseed/', '/pdb_gym/');

ALTER PLUGGABLE DATABASE PDB_GYM OPEN;

---------------------------------------------------------
-- 2. STORAGE MANAGEMENT (TABLESPACES)
---------------------------------------------------------
CREATE TABLESPACE TS_GYM_DATA
  DATAFILE '/u01/oradata/pdb_gym/ts_gym_data01.dbf' SIZE 200M;

CREATE TABLESPACE TS_GYM_INDEX
  DATAFILE '/u01/oradata/pdb_gym/ts_gym_index01.dbf' SIZE 100M;

---------------------------------------------------------
-- 3. USER & PRIVILEGES
---------------------------------------------------------
CREATE USER GYM IDENTIFIED BY gym
  DEFAULT TABLESPACE TS_GYM_DATA
  QUOTA UNLIMITED ON TS_GYM_DATA
  QUOTA UNLIMITED ON TS_GYM_INDEX;

GRANT CREATE SESSION, CREATE TABLE, CREATE VIEW TO GYM;

---------------------------------------------------------
-- 4. SCHEMA & VERIFICATION (CRUD)
---------------------------------------------------------
-- (Hna zid les tables MEMBERS, COACHES...)
SELECT segment_name, segment_type, tablespace_name
FROM user_segments;
