#!/bin/bash
set -euo pipefail

dockerx python:3.11-slim \
    bash -c '
        pip install pipx && \
        pipx install poetry && \
        pipx ensurepath && \
        exec bash
    '
