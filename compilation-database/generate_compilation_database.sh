#!/bin/bash

INSTALL_DIR="/dev-tools/compilation-database"
VERSION="0.5.2"

# Check if `generate.py` is already present.
which ${INSTALL_DIR}/bazel-compilation-database-${VERSION}/generate.py &> /dev/null || (
# Download all source files for generating compilation database.
    cd "${INSTALL_DIR}" \
    && curl -L "https://github.com/grailbio/bazel-compilation-database/archive/${VERSION}.tar.gz" | tar -xz
)

# Run python script which generates compilation database.
# We should add `--action_env=CC=clang` cause we need clang
# for using clang-tidy.
${INSTALL_DIR}/bazel-compilation-database-${VERSION}/generate.py -- --action_env=CC=clang