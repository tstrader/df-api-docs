wget --quiet \
  --method POST \
  --body-data '{"days_of_week":{},"email_address":"<ADD STRING VALUE>","end_hour":{},"expires_after":{},"list_order":{},"list_type":{},"minute_frequency":{},"send_type":{},"start_hour":{},"time_zone":{}}' \
  --output-document \
  - https://www.directfreight.com/api/alerts/%7Blist_type%7D