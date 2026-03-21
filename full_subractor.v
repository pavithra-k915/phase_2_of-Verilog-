
module full_subractor (
    input A,B,Bin,
    output D,Bout
);
    assign D=A^B^Bin;
    assign Bout=(~A&Bin)|(~A&B)|(B&Bin);
endmodule