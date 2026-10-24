
// module dynamic_array;

//     int dyn[];

//     initial begin

//         dyn = new[5];

//         dyn = '{12, 15, 48, 99,  10};
//         $display("The value of dyn is %p", dyn);

//         dyn = new [8] (dyn);
//         $display("The value of dyn is %p", dyn);

//         dyn = new [8];
//         $display("The value of dyn is %p", dyn);

//     end

// endmodule


//2 Dimensional Dynamic Array

module dynamic_array_2d;

    int dyn[][];

    initial begin
        dyn = new[2];

        foreach(dyn[i])
            dyn[i] = new[3];

        dyn[0][0] = 10; 
        dyn[0][1] = 20; 
        dyn[0][2] = 30; 

        dyn[1][0] = 40; 
        dyn[1][1] = 50; 
        dyn[1][2] = 60; 
         

        foreach(dyn[i,j])
            $display("data[%0d][%0d] = %0d", i, j, dyn[i][j]);

    end

endmodule
