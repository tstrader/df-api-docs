wget --quiet \
  --method POST \
  --body-data '{"alert_id":5555,"count":false,"destination_city":"chicago","destination_radius":0,"destination_state":["<ADD STRING VALUE>"],"item_count":0,"load_size":"Full","only_new":false,"origin_city":"chillicothe","origin_radius":0,"origin_state":["<ADD STRING VALUE>"],"page_number":0,"ship_date":["<ADD STRING VALUE>"],"total_items":0,"total_pages":0,"trailer_type":["<ADD STRING VALUE>"]}' \
  --output-document \
  - https://www.directfreight.com/api/boards/%7Bboard_type%7D