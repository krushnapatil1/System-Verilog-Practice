module tb_or_gate;

    logic a;
    logic b;
    logic c;


    or_gate dut(
        .a(a),
        .b(b),
        .c(c)
    );


    initial begin

        $dumpfile("or_gate.vcd");
        $dumpvars(0, tb_or_gate);
        
        a = 0;
        b = 0;
        #10;

        a = 0;
        b = 1;
        #10;

        a = 1;
        b = 0;
        #10;

        a = 1;
        b = 1;
        #10;


        $finish;

    end

    initial begin

        $monitor("Time = %0t | a = %b | b = %b | c = %b", $time, a, b, c);
    
    end

endmodule

