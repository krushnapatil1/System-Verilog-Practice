module tb_not_gate;

    logic a;
    logic b;

    not_gate dut(
        .a(a),
        .b(b)
    );


    initial begin
        
        $dumpfile("not_gate.vcd");
        $dumpvars(0, tb_not_gate);
    
        a = 0;
        #10;

        a = 1;
        #10;
    
    
    end


    initial begin
        
        $monitor("Time = %0t | a = %b | b = %b", $time, a, b);

    end 
endmodule