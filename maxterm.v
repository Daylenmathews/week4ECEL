module maxterm (
    input A, B, C, D,
    output Y
);

assign Y = (D|B|C)&(!A|!D)&(!B|!D) ;// Enter your equation here

endmodule
