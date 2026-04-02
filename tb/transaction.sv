class counter_txn;

    rand bit rst;
    rand bit en;

    // Reset distribution (more time in normal mode)
    constraint rst_dist {
        rst dist {0 := 7, 1 := 3};
    }

    // Enable distribution
    constraint en_dist {
        en dist {0 := 5, 1 := 5};
    }

    // During reset, enable must be 0
    constraint during_reset {
        if (rst) en == 0;
    }

endclass
