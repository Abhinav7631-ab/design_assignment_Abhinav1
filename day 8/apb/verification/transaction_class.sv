class apb_transaction;
    rand bit [31:0] paddr;
    rand bit [31:0] pwdata;
    rand bit        pwrite;
    
    
    bit [31:0] prdata;
    bit        pslverr;

    
    constraint addr_c {
        paddr dist { [0:31] :/ 80, [32:100] :/ 20 }; 
    }

    function void display(string name);
        $display("[%s] Addr: %0d, Write: %0b, WData: %0h, RData: %0h, SlvErr: %0b", 
                 name, paddr, pwrite, pwdata, prdata, pslverr);
    endfunction
endclass
