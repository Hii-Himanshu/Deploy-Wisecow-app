#!/bin/bash

URL="http://hustlerhimanshu.tech"  
STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$STATUS" -ge 200 ] && [ "$STATUS" -lt 400 ]; then
  echo "✅ The application is UP (Status Code: $STATUS)"
else
  echo "❌ The application is DOWN (Status Code: $STATUS)"
fi

