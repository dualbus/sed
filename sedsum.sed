#!/bin/sed -f

# Adds two numbers, X+Y, and prints the result.

# Main loop.
:m

# End condition: X = 0
# Did we reach it?
# => Branch to the end
s/^0*+//;tz

# Decrease X
s/+/:+/;ta
:a
s/9:/8/;ti
s/8:/7/;ti
s/7:/6/;ti
s/6:/5/;ti
s/5:/4/;ti
s/4:/3/;ti
s/3:/2/;ti
s/2:/1/;ti
s/1:/0/;ti
s/0:/:9/;ta
:i

# Increase Y
s/$/:/;tb
:b
s/9:/:0/;tb
s/8:/9/;tj
s/7:/8/;tj
s/6:/7/;tj
s/5:/6/;tj
s/4:/5/;tj
s/3:/4/;tj
s/2:/3/;tj
s/1:/2/;tj
s/0:/1/;tj
:j

# Branch to main loop.
bm

# End.
:z
