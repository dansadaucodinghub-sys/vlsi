// Gate-level Half Adder

module half_adder(A, B, sum, carry);
    input A, B;
    output sum, carry;

    xor g1(sum, A, B);
    and g2(carry, A, B);

endmodule
