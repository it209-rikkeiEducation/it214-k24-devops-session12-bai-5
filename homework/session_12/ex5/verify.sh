#!/bin/bash
echo "Checking pipeline configuration files..."
if [ -f "homework/session_12/ex5/.github/workflows/broken-pipeline.yml" ]; then
  echo "[OK] broken-pipeline.yml exists."
else
  echo "[ERROR] broken-pipeline.yml missing!"
  exit 1
fi

if [ -f "homework/session_12/ex5/troubleshooting.md" ]; then
  echo "[OK] troubleshooting.md exists."
else
  echo "[ERROR] troubleshooting.md missing!"
  exit 1
fi

echo "All checks passed successfully!"
