
module main (
	clk,
	v_JMP_11_out0,
	v_JMIN_15_out0,
	v_STALL_DUAL_CORE_30_out0,
	v_JEQZ_41_out0,
	v_JMI_43_out0,
	v_STORE_WEN_48_out0,
	v_JUMPADRESS_55_out0,
	v_EXEC1_57_out0,
	v_WEN_RAM_59_out0,
	v_JEQ_63_out0,
	v_STP_67_out0,
	v_BYTE_READY_70_out0,
	v_PC_COUNTER_NEXT_58_out0,
	v_REGISTER_7_out0);
input clk;
input  [11:0] v_JUMPADRESS_55_out0;
input v_BYTE_READY_70_out0;
input v_EXEC1_57_out0;
input v_JEQZ_41_out0;
input v_JEQ_63_out0;
input v_JMIN_15_out0;
input v_JMI_43_out0;
input v_JMP_11_out0;
input v_STALL_DUAL_CORE_30_out0;
input v_STORE_WEN_48_out0;
input v_STP_67_out0;
input v_WEN_RAM_59_out0;
output  [11:0] v_PC_COUNTER_NEXT_58_out0;
output  [11:0] v_REGISTER_7_out0;
reg  [11:0] v_REG1_10_out0 = 12'h0;
reg v_FF1_0_out0 = 1'b0;
wire  [10:0] v_C_17_out0;
wire  [10:0] v__50_out0;
wire  [11:0] v_A1_56_out0;
wire  [11:0] v_ADDER_IN_77_out0;
wire  [11:0] v_A_75_out0;
wire  [11:0] v_C1_28_out0;
wire  [11:0] v_JUMPADRESS_51_out0;
wire  [11:0] v_MUX1_73_out0;
wire  [11:0] v_MUX3_65_out0;
wire  [11:0] v_MUX4_35_out0;
wire  [11:0] v_MUX5_76_out0;
wire  [11:0] v__66_out0;
wire  [11:0] v__74_out0;
wire  [1:0] v__16_out0;
wire  [2:0] v__26_out0;
wire  [3:0] v__40_out0;
wire  [4:0] v__54_out0;
wire  [5:0] v__4_out0;
wire  [6:0] v__3_out0;
wire  [7:0] v__62_out0;
wire  [8:0] v__37_out0;
wire  [9:0] v__33_out0;
wire v_A1_56_out1;
wire v_BYTE_READY_38_out0;
wire v_COUT_2_out0;
wire v_EXEC1_72_out0;
wire v_G10_32_out0;
wire v_G11_29_out0;
wire v_G11_82_out0;
wire v_G12_49_out0;
wire v_G14_14_out0;
wire v_G15_18_out0;
wire v_G19_64_out0;
wire v_G1_68_out0;
wire v_G20_12_out0;
wire v_G21_34_out0;
wire v_G22_20_out0;
wire v_G2_44_out0;
wire v_G2_84_out0;
wire v_G3_31_out0;
wire v_G3_46_out0;
wire v_G4_53_out0;
wire v_G4_80_out0;
wire v_G5_69_out0;
wire v_G5_8_out0;
wire v_G6_27_out0;
wire v_G7_52_out0;
wire v_G8_22_out0;
wire v_G9_25_out0;
wire v_JUMP_23_out0;
wire v_STP_78_out0;
wire v_SUB_39_out0;
wire v__19_out0;
wire v__1_out0;
wire v__21_out0;
wire v__24_out0;
wire v__42_out0;
wire v__45_out0;
wire v__5_out0;
wire v__6_out0;
wire v__79_out0;
wire v__81_out0;
wire v__83_out0;
wire v__9_out0;

always @(posedge clk) v_FF1_0_out0 <= v_BYTE_READY_38_out0;
always @(posedge clk) v_REG1_10_out0 <= v_G19_64_out0 ? v_MUX4_35_out0 : v_REG1_10_out0;
assign v_C1_28_out0 = 12'h7f4;
assign v_C_17_out0 = 11'h0;
assign v_G21_34_out0 = ! v_WEN_RAM_59_out0;
assign v_BYTE_READY_38_out0 = v_BYTE_READY_70_out0;
assign v_JUMPADRESS_51_out0 = v_JUMPADRESS_55_out0;
assign v_G4_53_out0 = v_JEQZ_41_out0 && v_JEQ_63_out0;
assign v__66_out0 = { v_STALL_DUAL_CORE_30_out0,v_C_17_out0 };
assign v_G5_69_out0 = v_JMIN_15_out0 && v_JMI_43_out0;
assign v_EXEC1_72_out0 = v_EXEC1_57_out0;
assign v_STP_78_out0 = v_STP_67_out0;
assign v_G20_12_out0 = v_EXEC1_72_out0 && v_G21_34_out0;
assign v_G15_18_out0 = !(v_EXEC1_72_out0 || v_FF1_0_out0);
assign v_G19_64_out0 = ! v_STP_78_out0;
assign v_A_75_out0 = v__66_out0;
assign v_G2_84_out0 = v_JMP_11_out0 || v_G5_69_out0;
assign v__1_out0 = v_A_75_out0[10:10];
assign v__5_out0 = v_A_75_out0[7:7];
assign v__6_out0 = v_A_75_out0[3:3];
assign v__9_out0 = v_A_75_out0[2:2];
assign v__19_out0 = v_A_75_out0[11:11];
assign v__21_out0 = v_A_75_out0[5:5];
assign v__24_out0 = v_A_75_out0[8:8];
assign v__42_out0 = v_A_75_out0[1:1];
assign v__45_out0 = v_A_75_out0[4:4];
assign v_G3_46_out0 = v_G2_84_out0 || v_G4_53_out0;
assign v__79_out0 = v_A_75_out0[9:9];
assign v__81_out0 = v_A_75_out0[6:6];
assign v_G11_82_out0 = v_G20_12_out0 || v_STP_78_out0;
assign v__83_out0 = v_A_75_out0[0:0];
assign v_G22_20_out0 = v_G11_82_out0 && v_STALL_DUAL_CORE_30_out0;
assign v_JUMP_23_out0 = v_G3_46_out0;
assign v_G14_14_out0 = v_G15_18_out0 && v_JUMP_23_out0;
assign v_SUB_39_out0 = v_G22_20_out0;
assign v_G5_8_out0 = ((v__45_out0 && !v_SUB_39_out0) || (!v__45_out0) && v_SUB_39_out0);
assign v_G8_22_out0 = ((v__5_out0 && !v_SUB_39_out0) || (!v__5_out0) && v_SUB_39_out0);
assign v_G9_25_out0 = ((v__24_out0 && !v_SUB_39_out0) || (!v__24_out0) && v_SUB_39_out0);
assign v_G6_27_out0 = ((v__21_out0 && !v_SUB_39_out0) || (!v__21_out0) && v_SUB_39_out0);
assign v_G11_29_out0 = ((v__1_out0 && !v_SUB_39_out0) || (!v__1_out0) && v_SUB_39_out0);
assign v_G3_31_out0 = ((v__9_out0 && !v_SUB_39_out0) || (!v__9_out0) && v_SUB_39_out0);
assign v_G10_32_out0 = ((v__79_out0 && !v_SUB_39_out0) || (!v__79_out0) && v_SUB_39_out0);
assign v_G2_44_out0 = ((v__42_out0 && !v_SUB_39_out0) || (!v__42_out0) && v_SUB_39_out0);
assign v_G12_49_out0 = ((v__19_out0 && !v_SUB_39_out0) || (!v__19_out0) && v_SUB_39_out0);
assign v_G7_52_out0 = ((v__81_out0 && !v_SUB_39_out0) || (!v__81_out0) && v_SUB_39_out0);
assign v_G1_68_out0 = ((v__83_out0 && !v_SUB_39_out0) || (!v__83_out0) && v_SUB_39_out0);
assign v_MUX1_73_out0 = v_G14_14_out0 ? v_JUMPADRESS_51_out0 : v_REG1_10_out0;
assign v_G4_80_out0 = ((v__6_out0 && !v_SUB_39_out0) || (!v__6_out0) && v_SUB_39_out0);
assign v__16_out0 = { v_G1_68_out0,v_G2_44_out0 };
assign v__26_out0 = { v__16_out0,v_G3_31_out0 };
assign v__40_out0 = { v__26_out0,v_G4_80_out0 };
assign v__54_out0 = { v__40_out0,v_G5_8_out0 };
assign v__4_out0 = { v__54_out0,v_G6_27_out0 };
assign v__3_out0 = { v__4_out0,v_G7_52_out0 };
assign v__62_out0 = { v__3_out0,v_G8_22_out0 };
assign v__37_out0 = { v__62_out0,v_G9_25_out0 };
assign v__33_out0 = { v__37_out0,v_G10_32_out0 };
assign v__50_out0 = { v__33_out0,v_G11_29_out0 };
assign v__74_out0 = { v__50_out0,v_G12_49_out0 };
assign v_ADDER_IN_77_out0 = v__74_out0;
assign {v_A1_56_out1,v_A1_56_out0 } = v_MUX1_73_out0 + v_ADDER_IN_77_out0 + v_G22_20_out0;
assign v_COUT_2_out0 = v_A1_56_out1;
assign v_MUX3_65_out0 = v_STP_78_out0 ? v_A1_56_out0 : v_MUX1_73_out0;
assign v_MUX5_76_out0 = v_STORE_WEN_48_out0 ? v_REG1_10_out0 : v_A1_56_out0;
assign v_MUX4_35_out0 = v_BYTE_READY_38_out0 ? v_C1_28_out0 : v_MUX5_76_out0;
assign v_PC_COUNTER_NEXT_58_out0 = v_MUX3_65_out0;
assign v_REGISTER_7_out0 = v_MUX4_35_out0;


endmodule
