# Restore Data From a Postgres Database Archive

When started this service will link to a database defined by environment
variables and restore the data contents of a provided dump file.

## Usage

This container assumes the following:

1. There is a volume mounted at the directory given by `BACKUP_DIR` and this
   variable is passed into the container's environment.
2. That volume contains a file given by `BACKUP_FILE` which was previously
   created by `pg_dump` with custom format.
3. Non-default connection parameters are controlled by the following environment
   variables:

   ```
   PGHOST
   PGUSER
   PGPORT
   PGDATABASE
   PGPASSWORD
   ```

   at the very least, `PGHOST` should probably be a linked postgres container
   that hosts the database.

## Also See

[postgres-backup](https://github.com/DD-DeCaF/postgres-backup)
