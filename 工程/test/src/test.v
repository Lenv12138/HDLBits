module top_module (
    input clk,
    input areset,
    input x,
    output z
); 

    parameter A = 2'd0, B = 2'd1, C = 2'd2;

    reg [2:0] state;
    wire [2:0] next_state;

    always @(posedge clk, posedge areset) begin
        if (areset)
            state <= 3'd0;
        else
            state <= next_state;
    end
    

    always @(*)
    begin
        case (state)
            A : 
                if (x)
                    next_state = B;
                else
                    next_state = A;
            B : 
                if (x)
                    next_state = C;
                else
                    next_state = B;
            C : 
                if (x)
                    next_state = C;
                else
                    next_state = B;
            default : next_state = A;
        endcase
    end

    assign z = (state == B);

endmodule
