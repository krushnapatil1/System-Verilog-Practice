module test;

    int a = 10;
    int b = 20;

    initial begin
        $display("a = %0d", a);
        $display("b = %0d", b);
        $display("sum = %0d", a + b);
    end

endmodule