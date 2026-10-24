
//1D PACKED ARRAY
module packed_array;

    bit [7:0] data;

    initial begin
        data = 8'b10100101;

        $display("Data in Binary: %b", data);
        $display("Data[0]: %b", data[0]);
        $display("Data[7]: %b", data[7]);
        $display("Data in Decimal: %d", data);

    end

endmodule


//2D PACKED ARRAY
module packed_array2d;

    bit [1:0] [3:0] data;

    initial begin
        data = 8'b10100101;

        $display("Complete Data: %b", data);
        $display("Group 1: %b", data[1]);
        $display("Group 0: %b", data[0]);
        $display("Single Bit: %b", data[1][3]);

    end
    
endmodule



//3D PACKED ARRAY

module packed_array3d;

    bit [1:0] [1:0] [1:0] data;

    initial begin
        data = 8'b10100101;

        $display("Complete Data: %b", data);

        $display("Section 1: %b", data[1]);
        $display("Section 0: %b", data[0]);

        $display("Group 1 from section 0: %b", data[0][1]);
        $display("Group 1 Section 1: %b", data[1][1]);

        $display("Single Bit: %b", data[1][1][0]);

    end

endmodule