module enum_example;

    typedef enum logic [1:0] {
        IDLE = 2'b00,
        READ = 2'b01,
        WRITE = 2'b10,
        DONE = 2'b11
    } state_t;


    state_t state;

    initial begin
        
        state = IDLE;
        $display("State = %s, Value = %b", state.name(), state);

        state = READ;
        $display("State = %s, Value = %b", state.name(), state);

        state = WRITE;
        $display("State = %s, Value = %b", state.name(), state);

        state = DONE;
        $display("State = %s, Value = %b", state.name(), state);
        
    end

endmodule