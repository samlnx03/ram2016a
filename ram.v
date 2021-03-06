module ram(input clk, enable, [3:0]ab, output [3:0]dbi, output [3:0] dbo);
        reg[3:0] dataram[0:15];
        assign dbo=dataram[ab];
        always @(posedge clk) begin
                if(enable)
                        dataram[ab]<=dbi;
        end
endmodule

module Monostable(Dclk, In, Out);
parameter Ns = 100;
input wire Dclk;   // Delay clock (10ns)
input wire In;     // Data to be delayed 
output reg Out;    // Output

integer Count;
                                
always @(posedge Dclk)
begin
    if (In) begin
        Out <= 1;
        Count <= 0;
    end else begin
        Count <= Count + 1;
        if (Count == Ns/10) Out <= 0;
    end
end
endmodule

module top(input clk, b, output [7:0] display, output [3:0] anodos);
    always @(posedge b, negedge b) begin
        if(b) c_enable<=1;
        else c_enable<=0;
    end

    always @(posedge clk) begin
        if(!c_enable) begin // 
            cta<=0;
        else
            cta<=cta+1;
            if (cta
    end

