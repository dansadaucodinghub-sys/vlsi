// 4-bit Ripple Carry Adder using structural modeling
// Constructed using four full adder cells.

module full_adder_cell(a, b, cin, s, cout);
    input a, b, cin;
    output s, cout;

    wire w1, w2, w3;

    xor xor1(s, a, b, cin);

    and and1(w1, a, b);
    and and2(w2, a, cin);
    and and3(w3, b, cin);

    or or1(cout, w1, w2, w3);

endmodule

module ripple_carry_adder4_structural(A, B, Cin, Sum, Cout);
    input [3:0] A, B;
    input Cin;
    output [3:0] Sum;
    output Cout;

    wire w1, w2, w3;

    full_adder_cell fa1(A[0], B[0], Cin, Sum[0], w1);
    full_adder_cell fa2(A[1], B[1], w1,  Sum[1], w2);
    full_adder_cell fa3(A[2], B[2], w2,  Sum[2], w3);
    full_adder_cell fa4(A[3], B[3], w3,  Sum[3], Cout);

endmodule
