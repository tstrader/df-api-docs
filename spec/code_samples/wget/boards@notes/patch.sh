wget --quiet \
  --method PATCH \
  --header 'end-user-token: SOME_STRING_VALUE' \
  --body-data '{"body":"<ADD STRING VALUE>","title":"<ADD STRING VALUE>"}' \
  --output-document \
  - https://www.directfreight.com/api/boards/notes