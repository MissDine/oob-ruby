require "pry"
letter = "b"

if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
  "vowel"
else
  "not a vowel"
end
binding.pry