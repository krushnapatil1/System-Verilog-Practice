module tb_and_gate;

    logic a;
    logic b;
    logic y;


    and_gate dut(
        .a(a),
        .b(b),
        .y(y)
    );


    initial begin
        
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
        
        $monitor("Time = %0t | a = %0b | b = %0b | y = %0b", $time, a, b, y);
        
    end



endmodule