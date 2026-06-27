`timescale 1ns/1ps

module comparator_4bit_tb;

reg [3:0] A;
reg [3:0] B;

wire A_greater;
wire A_equal;
wire A_less;

comparator_4bit uut (
    .A(A),
    .B(B),
    .A_greater(A_greater),
    .A_equal(A_equal),
    .A_less(A_less)
);

initial begin
    // Generate waveform
    $dumpfile("comparator_4bit.vcd");
    $dumpvars(0, comparator_4bit_tb);

    $display("Time\tA\tB\tA>B\tA=B\tA<B");
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b",
             $time, A, B, A_greater, A_equal, A_less);

    // Test Case 1: A > B
    A = 4'b0011; B = 4'b0010;
    #10;

    // Test Case 2: A = B
    A = 4'b0101; B = 4'b0101;
    #10;

    // Test Case 3: A < B
    A = 4'b0010; B = 4'b1001;
    #10;

    // Test Case 4: A > B
    A = 4'b1111; B = 4'b0111;
    #10;

    // Test Case 5: A = B
    A = 4'b0000; B = 4'b0000;
    #10;

    // Test Case 6: A < B
    A = 4'b0110; B = 4'b1110;
    #10;

    $finish;
end

endmodule