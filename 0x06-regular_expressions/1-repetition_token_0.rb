#!/usr/bin/env ruby
word = ARGV[0]
def match_expression?(word)
    reg_exp = /hbt{2,5}n/

    if word.match?(reg_exp)
        puts "#{word}"
    else
        puts ""
    end
end

match_expression?(word)
