module assos_array;

    int assos[*];       //Here all data types as your index
    int assos2[string];     //Here only string data type as your index

    initial  begin
        assos[0] = 1;
        assos["second"] = 2;
        assos["third"] = 3;

        $display("The value of assos array is %p", assos);

        
    
        assos2["first"] = 10;
        assos2["second"] = 20;
        assos2["third"] = 30;

        foreach(assos2[i])
            $display("Assos[%s] = %0d", i , assos2[i]);

    end
    
endmodule