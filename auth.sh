#!/usr/bin/expect

# Start an interactive program (e.g., SSH)
spawn ssh user@hostname

# Expect the password prompt and respond with the password
expect "password:"
send "your_password\r"

# Expect a specific command prompt and send a command
expect "$ "
send "ls -l\r"

# Expect the output of the 'ls' command and print it
expect "$ "
puts $expect_out(buffer)

# Exit the spawned program
send "exit\r"
expect eof
