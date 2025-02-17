#!/bin/bash

python3 -m venv env
source env/bin/activate
pip install chainlit langchain_community
export PATH="$PATH:$PWD/env/bin"
python downloadLLM.py
python ingest.py
chainlit run model.py
