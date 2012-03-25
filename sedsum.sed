#!/bin/sed -f

s/$/:/;ta
:a
s/9:/:0/;ta
s/8:/9/;tx
s/7:/8/;tx
s/6:/7/;tx
s/5:/6/;tx
s/4:/5/;tx
s/3:/4/;tx
s/2:/3/;tx
s/1:/2/;tx
s/0:/1/;tx
:x

s/$/:/;tb
:b
s/9:/8/;ty
s/8:/7/;ty
s/7:/6/;ty
s/6:/5/;ty
s/5:/4/;ty
s/4:/3/;ty
s/3:/2/;ty
s/2:/1/;ty
s/1:/0/;ty
s/0:/:9/;tb
:y
