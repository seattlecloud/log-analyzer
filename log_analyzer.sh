#!/bin/bash

# ==========================================
# Log Analyzer Script
# Author: Your Name
# Description: Cleans and analyzes log files
# ==========================================

LOG_FILE=$1
OUTPUT_FILE="report.txt"

# Check if file exists
if [ ! -f "$LOG_FILE" ]; then
  echo "Error: File not found!"
  exit 1
fi

echo "Analyzing log file: $LOG_FILE"
echo "Generating report..."

# Clear old report
> $OUTPUT_FILE

echo "===== LOG ANALYSIS REPORT =====" >> $OUTPUT_FILE
echo "File: $LOG_FILE" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Count total lines
TOTAL_LINES=$(wc -l < "$LOG_FILE")
echo "Total Lines: $TOTAL_LINES" >> $OUTPUT_FILE

# Errors
ERROR_COUNT=$(grep -i "error" "$LOG_FILE" | wc -l)
echo "Error Count: $ERROR_COUNT" >> $OUTPUT_FILE

# Warnings
WARNING_COUNT=$(grep -i "warning" "$LOG_FILE" | wc -l)
echo "Warning Count: $WARNING_COUNT" >> $OUTPUT_FILE

# Failed logins
FAILED_LOGINS=$(grep -i "failed" "$LOG_FILE" | wc -l)
echo "Failed Login Attempts: $FAILED_LOGINS" >> $OUTPUT_FILE

echo "" >> $OUTPUT_FILE
echo "===== TOP 5 ERROR MESSAGES =====" >> $OUTPUT_FILE

grep -i "error" "$LOG_FILE" | sort | uniq -c | sort -nr | head -5 >> $OUTPUT_FILE

echo "" >> $OUTPUT_FILE
echo "Report saved to $OUTPUT_FILE"