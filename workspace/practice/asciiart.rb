asciiart = <<END
 #############
##           ##
##           ##
#####     #####
###############
######   ######
END

code = <<'END'
    3.times {
    00;
    puts "Hello%c:-%c" % [32,41]
    }
    ######
END


code = code.split.join
code = 'eval(%w('+code+')*"")'
code = asciiart.gsub("#"){code.slice!(0,1)}
puts code