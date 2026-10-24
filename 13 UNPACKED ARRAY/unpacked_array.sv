//TO ASSIGN AND DISPLAY THE VALUES OF UNPACKED ARRAY THERE ARE SEVERAL METHODS. WE CANNOT ASSIGN THE THE VALUES TO UNPACKED ARRAY LIKE PACKED ARRAY IT WILL GIVES US ERROR


//METHOD 1 INDEX METHOD

module unpacked_array_index;

    bit [7:0] data [0:3];

    initial begin
        
        data[0] = 8'd10;
        data[1] = 8'd20;
        data[2] = 8'd30;
        data[3] = 8'd40;

        $display("data[0] = %d", data[0]);
        $display("data[1] = %d", data[1]);
        $display("data[2] = %d", data[2]);
        $display("data[3] = %d", data[3]);

    end
endmodule



//METHOD 2 ARRAY  AGRIGATE METHOD
module unpacked_array_aggrigate;

    bit [7:0] data [0:3];
    

    initial begin
        
        //data = '{8'd10, 8'd20, 8'd30, 8'd40};
        
        data[0] = 8'd10;
        data[1] = 8'd20;
        data[2] = 8'd30;
        data[3] = 8'd40;

        $display("data = %p", data);

    end
endmodule


//MEHTOD 3 FOR LOOP
module unpacked_array_forloop;

    bit [7:0] data [0:3];
    integer i;
    
    initial begin
        
        for (i = 0 ; i < 4 ; i++ ) begin
        
            data[i] = (i + 1) * 10;

        end

        foreach(data[i])
            $display("data[%0d] = %d", i, data[i]);
        
    end
endmodule



//METHOD 4 FOREACH LOOP
module unpacked_array_foreach;

    int data [0:4];

    initial begin

        foreach (data[i]) begin
            data[i] = (i + 1) * 10;
        end

        foreach (data[i]) begin
            $display("data[%0d] = %0d", i, data[i]);
        end

    end

endmodule
