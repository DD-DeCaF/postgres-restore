#!/usr/bin/env bash

set -e

# restore the data from an archive in custom format
pg_restore --verbose --data-only "${BACKUP_DIR}/${BACKUP_FILE}"
