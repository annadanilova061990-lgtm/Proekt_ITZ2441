#!/bin/bash
echo "Downloading PlantVillage dataset from Kaggle..."
if ! command -v kaggle &> /dev/null; then
    pip install kaggle
fi
mkdir -p ../data/raw
kaggle datasets download -d emmarex/plantdisease -p ../data/raw/
unzip -q ../data/raw/plantdisease.zip -d ../data/raw/
rm ../data/raw/plantdisease.zip
echo "Dataset ready in ../data/raw/"

