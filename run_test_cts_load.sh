#! /bin/bash
while IFS="|" read -r param_one param_two param_tree

do
 echo "param_one : $param_one"
 echo "param_two: $param_two"

curl --location --request POST 'https://URL' \
--header 'Content-Type: application/json' \
--data-raw '{
  "param_one": "'$param_one'",
  "param_two": "'$param_two'",
}' ' &'
done < <(tail -n +2 cts_cread.csv)
