task drive(counter_txn t,
           output logic rst,
           output logic en);

    rst = t.rst;
    en  = t.en;

    #1; // small delay to apply stimulus

endtask
