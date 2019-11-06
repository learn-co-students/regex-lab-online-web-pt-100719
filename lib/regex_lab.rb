def starts_with_a_vowel?(word)

  # Create an if/else statement
  # Statement says if the beginning of the given word has a value return a value of 'true'
  # If the given word begins with a constant, return a value of 'false'
  if word.match(/^[AEIUO]|^[aeiou]/)
    true
  else
    false
  end

end

def words_starting_with_un_and_ending_with_ing(text)

  # Scans given text and places it into an array if the text
  # begins with 'un' and ends with 'ing'
  text.scan(/un\w+ing/)

end

def words_five_letters_long(text)

  # First we pass in a string for text: "bananas, apple, house, grape, strawberries"
  # We create a new array and set it equal to the value of the passed in text
  # The string is 'split' removing the spaces between each item
  # We then group our items together using "grep" and set a boundary of five to collect
  # words no more than five characters

  new_array = text.split(" ") # => ["bananas", "apple", "house", "grape", "strawberries"]
  new_array.grep(/\b\w{5}\b/) # => ["apple", "house", "grape"]

end

def first_word_capitalized_and_ends_with_punctuation?(text)

  # Sets up an if/else statement that checks the passed text
  # If passed text begins with a capital letter and ends with punctuation
  # the test comes back true. If not, expect a false result.

  if text.match(/^[A-Z]/) && text.match(/[\.]$/)
    true
  else
    false
  end

end

def valid_phone_number?(phone)

  # Creating if/else statement that regulates passed in value for phone argument
  # If the value of phone is 10 digits, we receive a 'true' result (i.e "4075352601")
  # If the value of phone is broken up into three segments (i.e "407 535 2601" or "(407)535-2601"), we receive a 'true' result
  # If the value of phone is seven digits, we receive a 'true' result

  if phone.match(/([0-9] ?){10}/) || phone.match(/(\([0-9]{3}\)([0-9]{3}-[0-9]{4})\b)/) || phone.match(/\b([0-9]{7})\b/)
    true
  else
    false
  end

end
