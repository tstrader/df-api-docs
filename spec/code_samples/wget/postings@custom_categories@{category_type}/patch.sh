wget --quiet \
  --method PATCH \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --header 'end-user-token: SOME_STRING_VALUE' \
  --output-document \
  - https://www.directfreight.com/api/postings/custom_categories/%7Bcategory_type%7D