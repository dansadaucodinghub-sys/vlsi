// Full Adder using structural modeling
// Constructed using two half adders and one OR gate.

module half_adder(a, b, s, c);
    input a, b;
    output s, c;

    xor xor1(s, a, b);
    and and1(c, a, b);

endmodule

module full_adder_structural(a, b, cin, s, cout);
    input a, b, cin;
    output s, cout;

    wire w1, w2, w3;

    half_adder ha1(a, b, w1, w2);
    half_adder ha2(w1, cin, s, w3);

    or or1(cout, w2, w3);

endmodule
