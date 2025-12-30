`timescale 1ns/1ps
module tb_cla_8;

reg  [7:0] A, B;
reg        Cin;
wire [7:0] Sum;
wire       Cout;

// DUT = Design Under Test
cla_8 dut (.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));

initial begin
    A = 8'd0;   B = 8'd1;   Cin = 1'b0; #10;
    $display("A=%d B=%d Cin=%d Sum=%d Cout=%d",A,B,Cin,Sum,Cout);
    A = 8'd1;   B = 8'd2;   Cin = 1'b0; #10;
    $display("A=%d B=%d Cin=%d Sum=%d Cout=%d",A,B,Cin,Sum,Cout);
    A = 8'd2;   B = 8'd3;   Cin = 1'b0; #10;
    $display("A=%d B=%d Cin=%d Sum=%d Cout=%d",A,B,Cin,Sum,Cout);
    A = 8'd3;   B = 8'd4;   Cin = 1'b0; #10;
    $display("A=%d B=%d Cin=%d Sum=%d Cout=%d",A,B,Cin,Sum,Cout);
    A = 8'd4;   B = 8'd7;   Cin = 1'b0; #10;
    $display("A=%d B=%d Cin=%d Sum=%d Cout=%d",A,B,Cin,Sum,Cout);
    A = 8'd5;  B = 8'd6;  Cin = 1'b0; #10;
    $display("A=%d B=%d Cin=%d Sum=%d Cout=%d",A,B,Cin,Sum,Cout);
    A = 8'd7; B = 8'd5;  Cin = 1'b0; #10;
    $display("A=%d B=%d Cin=%d Sum=%d Cout=%d",A,B,Cin,Sum,Cout);
    A = 8'd9; B = 8'd1; Cin = 1'b0; #10;
    $display("A=%d B=%d Cin=%d Sum=%d Cout=%d",A,B,Cin,Sum,Cout);

    #100 $finish;
end

endmodule

