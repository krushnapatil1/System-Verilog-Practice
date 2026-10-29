//Associative with Built-in Functions
module associative_array_example;

  int marks[int];
  int key;

  initial begin
    // Insert values
    marks[101] = 85;
    marks[105] = 90;
    marks[110] = 78;
    marks[115] = 95;

    // num(): Returns number of entries
    $display("Number of entries = %0d", marks.num());

    // size(): Returns number of entries
    $display("Array size = %0d", marks.size());

    // exists(): Checks whether a key exists
    $display("Key 105 exists = %0d", marks.exists(105));
    $display("Key 120 exists = %0d", marks.exists(120));

    // first(): Gets the smallest existing key
    if (marks.first(key))
      $display("First key = %0d", key);

    // last(): Gets the largest existing key
    if (marks.last(key))
      $display("Last key = %0d", key);

    // next(): Gets the next existing key
    key = 101;
    if (marks.next(key))
      $display("Next key after 101 = %0d", key);

    // prev(): Gets the previous existing key
    key = 110;
    if (marks.prev(key))
      $display("Previous key before 110 = %0d", key);

    // Delete a particular entry
    marks.delete(105);
    $display("Entries after deleting key 105 = %0d",
             marks.num());

    // Delete all entries
    marks.delete();
    $display("Entries after deleting all = %0d",
             marks.num());
  end

endmodule