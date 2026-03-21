module half_subrator (
    input A,B,
    output D,Bout
);
  assign D=A^b;
  assign Bout=A& (~B);
endmodule