#!/bin/bash

# List of URLs to check
URLS=(
  "https://example.com"
  "https://example.org"
  "https://example.net"
)

# Report file
REPORT_FILE="availability_report.txt"

# Checking the availability of websites
check_availability() {
  echo "Website Availability Report - $(date)" > $REPORT_FILE
  echo "--------------------------------------" >> $REPORT_FILE
  
  for url in "${URLS[@]}"; do
    HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" -L $url)
    if [ "$HTTP_STATUS" -eq 200 ]; then
      echo "$url is available." >> $REPORT_FILE
    else
      echo "$url is not available (HTTP status: $HTTP_STATUS)." >> $REPORT_FILE
    fi
  done
  
  echo "Report has been saved to $REPORT_FILE."
}

check_availability
