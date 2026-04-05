#!/bin/bash
echo "=== Plant Health Classification Pipeline ==="
bash scripts/download_data.sh
if [ -f "src/train.py" ]; then
    python src/train.py
fi
if [ -f "src/evaluate.py" ]; then
    python src/evaluate.py
fi
echo "Pipeline completed."
