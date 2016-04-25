module ram(input clk, enable, [3:0]ab, output [3:0]dbi, output [3:0] dbo);
        reg[3:0] dataram[0:15];
        assign dbo=dataram[ab];
        always @(posedge clk) begin
                if(enable)
                        dataram[ab]<=dbi;
        end
endmodule

