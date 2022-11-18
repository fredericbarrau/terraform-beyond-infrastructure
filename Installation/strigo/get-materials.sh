#!/bin/bash

# gdown from https://github.com/Zenika/strigo-init-script-libs/blob/main/scripts/materials-helper.sh

SLIDES_FILE_ID='1Xmqn8NoORSK1HMvRt-5lI3YBs-KH-Nqy'
WORKBOOK_FILE_ID='1zBNHOr-oj8Kf8IPVs2zCwmnPaWsr6PkV'
WORKSPACES_FILE_ID='1mGy8Es4me3hIhvwBmH0FJDtoVAf9id2A'
SOLUTIONS_FILE_ID='164pZKL7YGAfR8aQ4zTQW_Ow9x87AYQH-'

PUBLIC_DIR=~ubuntu/public
gdown ${SLIDES_FILE_ID} --output ${PUBLIC_DIR}/
gdown ${WORKBOOK_FILE_ID} --output ${PUBLIC_DIR}/
gdown ${WORKSPACES_FILE_ID} --output ${PUBLIC_DIR}/

DEST_DIR=~ubuntu
unzip ${PUBLIC_DIR}/workspaces.zip -d ${DEST_DIR}

HIDDEN_DIR=~ubuntu/.hidden
mkdir --parent ${HIDDEN_DIR}
gdown ${SOLUTIONS_FILE_ID} --output ${HIDDEN_DIR}/
unzip ${HIDDEN_DIR}/solutions.zip -d ${HIDDEN_DIR}

chown -R ubuntu: ${PUBLIC_DIR} ${DEST_DIR}/workspaces ${HIDDEN_DIR}
