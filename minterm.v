module minterm (
    input A, B, C, D,
    output Y
);

assign Y = (!D&B)|(!A&!B&D)|(C&!D) ; // Enter your equation here

endmodule
