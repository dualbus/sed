#!/bin/sed -nf
#
# author: Eduardo A. Bustamante López (dualbus)
# description: The solution of the original problem (see README).

1 {
    x;
    s/^/a/;
    x;
};
x;

/a/ {
    x;

    /blah/ {
        p;
        s/./a/;
        x;
        b;
    };

    $ {
        p;
        b;
    };

    /[^[:space:]]/! {
        s/.*/b/;
        x;
        b;
    };

    p;
    s/.*/a/;
    x;
    b;
};

/b/ {
    x;

    /blah/ {
        s/./a/;
        x;
        b;
    };

    /[^[:space:]]/! {
        p;
        s/.*/b/;
        x;
        b;
    };

    s/x/\
x/
    p;
    s/\
x/a/;
    x;
    b;
};
