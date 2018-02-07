def title_case
  word.split(/(\W)/).map(&:capitalize).join
end

# title_case('the quick brown fox') # should return: 'The Quick Brown Fox'
#
# irb >
# require "this file"
# title_case('the quick brown fox')
