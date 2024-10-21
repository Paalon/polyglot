import std/tables
import std/strformat

let dictionary = {"a": "apple", "b": "banana"}.toTable

for key, value in dictionary.pairs:
  echo &"{key} {value}"
