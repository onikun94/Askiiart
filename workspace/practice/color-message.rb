# eval(%w(puts "\e[31mfoo\e[m")*"") #text color
# eval(%w(puts "\e[41mfoo\e[m")*"") #background color

# eval(%w(puts "\e[38;2;255;0;0mfoo\e[m")*"") #custom text color
# eval(%w(puts "\e[48;2;255;0;0mfoo\e[m")*"") #custom background color

asciiart = <<END
      ####################
    ##                    ##
    ##     #         #    ##
     ##   #    ##   #    ##
      ####################
      ####################
      ####################

END

code = <<'END'
    e = 27.chr;
    puts (e+"[37;46mHello"+e+"[m"+32.chr+e+"[33;41mworld!"+e+"[m")
    #####
END

code = code.split.join
code = 'eval(%w('+code+')*"")'
code = asciiart.gsub("#"){code.slice!(0,1)}
puts code