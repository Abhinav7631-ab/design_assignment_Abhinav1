class environment;
    generator  gen;
    driver     drv;
    monitor    mon;
    scoreboard scb;

    mailbox #(apb_transaction) gen2drv;
    mailbox #(apb_transaction) mon2scb;
    virtual apb_if vif;

    function new(virtual apb_if vif);
        this.vif = vif;
        gen2drv = new();
        mon2scb = new();

        gen = new(gen2drv);
        drv = new(vif, gen2drv);
        mon = new(vif, mon2scb);
        scb = new(mon2scb);
    endfunction

    task run();
        fork
            gen.run();
            drv.run();
            mon.run();
            scb.run();
        join_none 
        wait(scb.trans_count == (gen.num_transactions + 2));
    endtask
endclass
