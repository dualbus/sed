#!/bin/sed -nf
#
# author: Eduardo A. Bustamante López (dualbus)
# description: the symbolic solution of the original problem (see README).

1 {
    x;
    s/^/a/;
    x;
};
x;

/a/ {
    x;

    /x/ {
        p;
        s/x/a/;
        x;
        b;
    };

    $ {
        p;
        b;
    };

    /e/ {
        s/e/b/;
        x;
        b;
    };

    /b/ {
        p;
        s/b/a/;
        x;
        b;
    };

};

/b/ {
    x;

    /x/ {
        s/x/e\
x/
        p;
        s/e\
x/a/;
        x;
        b;
    };

    /e/ {
        p;
        s/e/b/;
        x;
        b;
    };

    /b/ {
        s/b/a/;
        x;
        b;
    };
};
