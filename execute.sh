#!/usr/bin/expect -f

#spawn bash -c "cd poky && source oe-init-build-env && runqemu qemuarm nographic"
#expect "*login:*"
#send "root"
#interact

spawn bash -c "cd poky && source oe-init-build-env && runqemu qemuarm nographic"

# Wait for login prompt exactly
expect "*login: "
send "root\r"

# Wait for the root shell prompt inside qemuarm (usually ends with #)
expect -re {root@.*# }

# Send your command
send "hello-world\r"

# Optional: interact to keep session open
#interact

