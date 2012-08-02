#!/bin/sed -nf
#
# author: Eduardo A. Bustamante López (dualbus)
# description: the implementation of a simple finite-state machine in sed.

# The transition table is detailed after.
# It takes the following input: I = {a, b, a, b} and produces the following
# output: O = {a, b, b, a}. It's a Moore machine, in the sense that the output
# is determined but the state.

# Some operations might make no sense, like s/a/a/, but I left them for clarity
# purposes.

# Transition table:
#   a b
# a a b
# b b a

# Set the initial state.
1 {
    x;
    s/^/a/;
    x;
};

# The current state.
x;

/a/ {
    # The transition.
    x;

    /a/ {
        # The next state.
        s/a/a/;
        p;
        x;
        b;
    };

    /b/ {
        s/b/b/;
        p;
        x;
        b;
    };

};

/b/ {
    x;

    /a/ {
        s/a/b/;
        p;
        x;
        b;
    };

    /b/ {
        s/b/a/;
        p;
        x;
        b;
    };
};
