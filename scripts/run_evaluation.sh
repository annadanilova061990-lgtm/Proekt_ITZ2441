#!/bin/bash
echo "Running evaluation..."
if [ -f "src/evaluate.py" ]; then
    python src/evaluate.py
else
    echo "src/evaluate.py not found"
fi

