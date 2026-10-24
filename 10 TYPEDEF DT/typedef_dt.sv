module typedef_example;

    typedef logic [7:0] data_t;

    data_t data1;
    data_t data2;

    initial begin
        
        data1 = 8'd24;
        data2 = 8'd16;

        $display("The value of data1 is %d", data1);
        $display("The value of data2 is %d", data2);

    end

endmodule