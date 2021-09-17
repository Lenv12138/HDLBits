module vector_test_top();

wire [2:0] packed_wire = 3'b0; // 隐含了一句assign packed_wire = 3'b0;
reg a[7:0] = 8'h01;     // packed类型(常量,位拼接符)不能复制给unpacked类型

always @(*)
begin
    a = packed_wire;
end

endmodule