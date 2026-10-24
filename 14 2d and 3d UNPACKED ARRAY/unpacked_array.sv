//2D UNPACKED ARRAY

// module unpacked_array_2d;

//     int data [0:1][0:2];

//     initial begin

//         // Assign values
//         data[0][0] = 10;
//         data[0][1] = 20;
//         data[0][2] = 30;

//         data[1][0] = 40;
//         data[1][1] = 50;
//         data[1][2] = 60;

//         // Display values
//         foreach (data[i,j]) begin
//             $display("data[%0d][%0d] = %0d",
//                      i, j, data[i][j]);
//         end

//     end

// endmodule



//3D UNPACKED ARRAY

module unpacked_array_3d;

    int data [0:1][0:1][0:1];

    initial begin

        // Assign values
        foreach (data[i,j,k])
            data[i][j][k] = (i*4 + j*2 + k + 1) * 10;

        // Display values
        foreach (data[i,j,k])
            $display("data[%0d][%0d][%0d] = %0d",
                      i, j, k, data[i][j][k]);

    end

endmodule