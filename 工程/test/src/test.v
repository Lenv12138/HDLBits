module vector_test_top();

wire [2:0] packed_wire = 3'b0; // ������һ��assign packed_wire = 3'b0;
reg a[7:0] = 8'h01;     // packed����(����,λƴ�ӷ�)���ܸ��Ƹ�unpacked����

always @(*)
begin
    a = packed_wire;
end

endmodule