# Write a method in Ruby that takes a string argument and modifies it like so:

# - Remove any non-digit characters
# - Output the digits in groups of 3, separated by hyphen ("-")
# - Except if you'd end up like this "...xxx-x" instead group the last ones like so "...xx-xx"

# In other words:

# format("555 123 1234") => "555-123-12-34"
# format("(+1) 888 33x19") => "188-833-19"

=begin
 Regex explanation

 R = /
    \d{2,3}   # match 2 or 3 digits (greedily)
    (?=       # begin positive lookahead
      \d{2,3} # match 2 or 3 digits 
      |       # or
      \z      # match the end of the string
    )         # end positive lookahead
    /x        # free-spacing regex definition mode

=end

def format(s)
    # your code here
    # remove any non digit characters
    newStr = s.gsub(/\D/,'')
    # group new string in threes
    puts newStr.scan(/\d{2,3}(?=\d{2,3}|\z)/).join('-')
end

format("(+1) 888 33x19")