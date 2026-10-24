
//UNPACKED STRUCT EXAMPLE
module struct_example;

    struct{
        int id;
        string name;
        string city;
        byte roll_no;

    }person;

    initial begin

        // person.id = 1;
        // person.name = "Krushna";
        // person.city = "Pune";
        // person.roll_no = 3;

        person = '{1, "Krushna", "Pune", 3};

        $display("The values of ID is %d", person.id);
        $display("The values of NAME is %s", person.name);
        $display("The values of CITY is %s", person.city);
        $display("The values of ROLL NO is %d", person.roll_no);

        //$display("The structure person is %p", person);

    end


endmodule



//PACKED STRUCT EXAMPLE

// module packed_struct_example;

//     typedef struct packed{

//         bit valid;
//         bit [2:0] opcode;
//         bit [7:0] data;

//     }packet_t;

//     packet_t packet1;

//     initial begin

//         packet1.valid = 1'b1;
//         packet1.opcode = 3'b101;
//         packet1.data = 8'd10;

//         $display("The values of Valid is %d", packet1.valid);
//         $display("The values of Opcode is %d", packet1.opcode);
//         $display("The values of Data is %d", packet1.data);

//         $display("Packet = %h", packet1);
//     end


// endmodule




//Structure insisde Structure
//WITHOUT TYPEDEF

module test;

    struct{
        string city;
        int pincode;
    }address;

    struct{
        string name;
        int age;
        struct{
            string city;
            string pincode;
        }address;
    }student;



    initial begin

        student.name = "Krushna";
        student.age = 20;
        student.address.city = "Pune";
        student.address.pincode = 412115;

        $display("name = %s", student.name);
        $display("Age = %0d", student.age);
        $display("City = %s", student..address.city);
        $display("Pincode = %0d", student.address.pincode);

    end

endmodule




//WITH TYPEDEF

module test;

    typedef struct{
        string city;
        int pincode;
    }address_t;

    typedef struct{
        string name;
        int age;
        address_t address;
    }student_t;

    student_t student;


    initial begin
        
        student.name = "Krushna";
        student.age = 20;
        student.address.city = "Pune";
        student.address.pincode = 412115;

        $display("name = %s", student.name);
        $display("Age = %0d", student.age);
        $display("City = %s", student..address.city);
        $display("Pincode = %0d", student.address.pincode);

    end

endmodule

