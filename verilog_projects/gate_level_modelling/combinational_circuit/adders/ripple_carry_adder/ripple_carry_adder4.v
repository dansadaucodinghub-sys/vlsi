// Gate-level 4-bit Ripple Carry Adder
// This file is standalone. It includes the internal full_adder_cell module.

module full_adder_cell(A, B, Cin, sum, Cout);
    input A, B, Cin;
    output sum, Cout;

    wire w1, w2, w3;

    xor g1(sum, A, B, Cin);

    and g2(w1, A, B);
    and g3(w2, A, Cin);
    and g4(w3, B, Cin);

    or  g5(Cout, w1, w2, w3);

endmodule


module ripple_carry_adder4(A, B, Cin, Sum, Cout);
    input [3:0] A, B;
    input Cin;
    output [3:0] Sum;
    output Cout;

    wire c1, c2, c3;

    full_adder_cell fa0(A[0], B[0], Cin, Sum[0], c1);
    full_adder_cell fa1(A[1], B[1], c1,  Sum[1], c2);
    full_adder_cell fa2(A[2], B[2], c2,  Sum[2], c3);
    full_adder_cell fa3(A[3], B[3], c3,  Sum[3], Cout);

endmodule
