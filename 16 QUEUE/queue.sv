module queue;

    int queue[$];

    initial  begin
        queue = '{1, 2, 3};
        $display("The value of queue is %p", queue);

        queue.push_front(0);
        $display("The value of queue is %p", queue);

        queue.push_back(4);
        $display("The value of queue is %p", queue);

        queue.insert(2, 10);
        $display("The value of queue is %p", queue);


   end

endmodule