#!/usr/bin/expect -f


spawn ssh-copy-id 192.168.80.4

expect {

    "*re you sure you want to continue connecting" {
        send "yes\r"
        exp_continue
    }
    "*assword*" {
        send "vagrant\r"
        exp_continue
    }
}
