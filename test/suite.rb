#simple way to make sure requires are isolated
result = Dir["test/**/*_test.rb"].collect{|test_file| system("ruby #{test_file}") }.uniq == [true]
exit(result ? 0 : 1)