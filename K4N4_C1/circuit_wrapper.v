module p_ff (
    D,
    Q,
    RESET_B,
    CLK);

    input [0:0] D;
    input [0:0] CLK;
    input [0:0] RESET_B;
    output reg [0:0] Q;

    always @(posedge CLK or posedge RESET_B) begin
        if (RESET_B)
            Q <= 0;
        else
            Q <= D;
    end

/*
    sky130_fd_sc_hd__dfrtp_1 #() dff (
        .Q(Q),
        .CLK(CLK),
        .D(D),
        .RESET_B(reset)
    );
*/
endmodule


module p_ccff (
    D,
    Q,
    CLK);

    input [0:0] D;
    input [0:0] CLK;
    output reg [0:0] Q;

    always @(posedge CLK) begin
            Q <= D;
    end
/*
    sky130_fd_sc_hd__dfxtp_1 #() ccff (
        .Q(Q),
        .CLK(CLK),
        .D(D)
    );
*/
endmodule


module p_mux ( X, A0, A1, S);

    input [0:0] A1;
    input [0:0] A0;
    input [0:0] S;
    output [0:0] X;

    assign X = S ? A1 : A0;

/*
    sky130_fd_sc_hd__mux2_1 #() mux (
        .X(X),
        .A0(A0),
        .A1(A1),
        .S(S)
    );
*/
endmodule


module p_invert (Y, A);

    input [0:0] A;
    output [0:0] Y;

    assign Y = !A;
/*
    sky130_fd_sc_hd__inv_1 #() invert (
        .Y(Y),
        .A(A)
    );
*/
endmodule

module p_buf (X, A);
    input [0:0] A;
    output [0:0] X;

    assign X = A;
/*
    sky130_fd_sc_hd__buf_4 #() buf (
        .X(X),
        .A(A)
    );
*/
endmodule
