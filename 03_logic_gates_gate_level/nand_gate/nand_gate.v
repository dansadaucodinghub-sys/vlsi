// NAND gate using gate-level modeling

module nand_gate(a, b, y);
    input a, b;
    output y;

    nand nand1(y, a, b);

endmodule
