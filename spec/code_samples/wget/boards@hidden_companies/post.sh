wget --quiet \
  --method POST \
  --header 'end-user-token: SOME_STRING_VALUE' \
  --body-data '{"company_name":"<ADD STRING VALUE>"}' \
  --output-document \
  - https://www.directfreight.com/api/boards/hidden_companies