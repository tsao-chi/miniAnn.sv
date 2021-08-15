// generated by sv2v
module neuron_learn_layer57 (
	clock,
	valid,
	learn,
	in,
	out,
	weights,
	activation_upper_bound,
	activation_lower_bound,
	expected_out,
	expected_in
);
	parameter N = 16;
	input wire clock;
	input wire valid;
	input wire learn;
	input wire [(N * 16) - 1:0] in;
	output wire [911:0] out;
	output wire [((57 * N) * 17) - 1:0] weights;
	output wire [968:0] activation_upper_bound;
	output wire [968:0] activation_lower_bound;
	input wire [911:0] expected_out;
	output wire [(N * 16) - 1:0] expected_in;
	wire [((57 * N) * 16) - 1:0] unavg_expected_in;
	unit_arr_average #(
		.N(57),
		.LEN(N)
	) avg(
		.in(unavg_expected_in),
		.out(expected_in)
	);
	neuron_learn #(.N(N)) instance0(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[0+:16]),
		.weights(weights[0+:17 * N]),
		.activation_upper_bound(activation_upper_bound[0+:17]),
		.activation_lower_bound(activation_lower_bound[0+:17]),
		.expected_out(expected_out[0+:16]),
		.expected_in(unavg_expected_in[0+:16 * N])
	);
	neuron_learn #(.N(N)) instance1(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[16+:16]),
		.weights(weights[17 * N+:17 * N]),
		.activation_upper_bound(activation_upper_bound[17+:17]),
		.activation_lower_bound(activation_lower_bound[17+:17]),
		.expected_out(expected_out[16+:16]),
		.expected_in(unavg_expected_in[16 * N+:16 * N])
	);
	neuron_learn #(.N(N)) instance2(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[32+:16]),
		.weights(weights[17 * (2 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[34+:17]),
		.activation_lower_bound(activation_lower_bound[34+:17]),
		.expected_out(expected_out[32+:16]),
		.expected_in(unavg_expected_in[16 * (2 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance3(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[48+:16]),
		.weights(weights[17 * (3 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[51+:17]),
		.activation_lower_bound(activation_lower_bound[51+:17]),
		.expected_out(expected_out[48+:16]),
		.expected_in(unavg_expected_in[16 * (3 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance4(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[64+:16]),
		.weights(weights[17 * (4 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[68+:17]),
		.activation_lower_bound(activation_lower_bound[68+:17]),
		.expected_out(expected_out[64+:16]),
		.expected_in(unavg_expected_in[16 * (4 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance5(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[80+:16]),
		.weights(weights[17 * (5 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[85+:17]),
		.activation_lower_bound(activation_lower_bound[85+:17]),
		.expected_out(expected_out[80+:16]),
		.expected_in(unavg_expected_in[16 * (5 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance6(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[96+:16]),
		.weights(weights[17 * (6 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[102+:17]),
		.activation_lower_bound(activation_lower_bound[102+:17]),
		.expected_out(expected_out[96+:16]),
		.expected_in(unavg_expected_in[16 * (6 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance7(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[112+:16]),
		.weights(weights[17 * (7 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[119+:17]),
		.activation_lower_bound(activation_lower_bound[119+:17]),
		.expected_out(expected_out[112+:16]),
		.expected_in(unavg_expected_in[16 * (7 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance8(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[128+:16]),
		.weights(weights[17 * (8 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[136+:17]),
		.activation_lower_bound(activation_lower_bound[136+:17]),
		.expected_out(expected_out[128+:16]),
		.expected_in(unavg_expected_in[16 * (8 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance9(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[144+:16]),
		.weights(weights[17 * (9 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[153+:17]),
		.activation_lower_bound(activation_lower_bound[153+:17]),
		.expected_out(expected_out[144+:16]),
		.expected_in(unavg_expected_in[16 * (9 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance10(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[160+:16]),
		.weights(weights[17 * (10 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[170+:17]),
		.activation_lower_bound(activation_lower_bound[170+:17]),
		.expected_out(expected_out[160+:16]),
		.expected_in(unavg_expected_in[16 * (10 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance11(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[176+:16]),
		.weights(weights[17 * (11 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[187+:17]),
		.activation_lower_bound(activation_lower_bound[187+:17]),
		.expected_out(expected_out[176+:16]),
		.expected_in(unavg_expected_in[16 * (11 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance12(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[192+:16]),
		.weights(weights[17 * (12 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[204+:17]),
		.activation_lower_bound(activation_lower_bound[204+:17]),
		.expected_out(expected_out[192+:16]),
		.expected_in(unavg_expected_in[16 * (12 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance13(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[208+:16]),
		.weights(weights[17 * (13 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[221+:17]),
		.activation_lower_bound(activation_lower_bound[221+:17]),
		.expected_out(expected_out[208+:16]),
		.expected_in(unavg_expected_in[16 * (13 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance14(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[224+:16]),
		.weights(weights[17 * (14 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[238+:17]),
		.activation_lower_bound(activation_lower_bound[238+:17]),
		.expected_out(expected_out[224+:16]),
		.expected_in(unavg_expected_in[16 * (14 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance15(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[240+:16]),
		.weights(weights[17 * (15 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[255+:17]),
		.activation_lower_bound(activation_lower_bound[255+:17]),
		.expected_out(expected_out[240+:16]),
		.expected_in(unavg_expected_in[16 * (15 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance16(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[256+:16]),
		.weights(weights[17 * (16 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[272+:17]),
		.activation_lower_bound(activation_lower_bound[272+:17]),
		.expected_out(expected_out[256+:16]),
		.expected_in(unavg_expected_in[16 * (16 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance17(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[272+:16]),
		.weights(weights[17 * (17 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[289+:17]),
		.activation_lower_bound(activation_lower_bound[289+:17]),
		.expected_out(expected_out[272+:16]),
		.expected_in(unavg_expected_in[16 * (17 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance18(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[288+:16]),
		.weights(weights[17 * (18 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[306+:17]),
		.activation_lower_bound(activation_lower_bound[306+:17]),
		.expected_out(expected_out[288+:16]),
		.expected_in(unavg_expected_in[16 * (18 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance19(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[304+:16]),
		.weights(weights[17 * (19 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[323+:17]),
		.activation_lower_bound(activation_lower_bound[323+:17]),
		.expected_out(expected_out[304+:16]),
		.expected_in(unavg_expected_in[16 * (19 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance20(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[320+:16]),
		.weights(weights[17 * (20 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[340+:17]),
		.activation_lower_bound(activation_lower_bound[340+:17]),
		.expected_out(expected_out[320+:16]),
		.expected_in(unavg_expected_in[16 * (20 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance21(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[336+:16]),
		.weights(weights[17 * (21 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[357+:17]),
		.activation_lower_bound(activation_lower_bound[357+:17]),
		.expected_out(expected_out[336+:16]),
		.expected_in(unavg_expected_in[16 * (21 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance22(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[352+:16]),
		.weights(weights[17 * (22 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[374+:17]),
		.activation_lower_bound(activation_lower_bound[374+:17]),
		.expected_out(expected_out[352+:16]),
		.expected_in(unavg_expected_in[16 * (22 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance23(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[368+:16]),
		.weights(weights[17 * (23 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[391+:17]),
		.activation_lower_bound(activation_lower_bound[391+:17]),
		.expected_out(expected_out[368+:16]),
		.expected_in(unavg_expected_in[16 * (23 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance24(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[384+:16]),
		.weights(weights[17 * (24 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[408+:17]),
		.activation_lower_bound(activation_lower_bound[408+:17]),
		.expected_out(expected_out[384+:16]),
		.expected_in(unavg_expected_in[16 * (24 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance25(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[400+:16]),
		.weights(weights[17 * (25 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[425+:17]),
		.activation_lower_bound(activation_lower_bound[425+:17]),
		.expected_out(expected_out[400+:16]),
		.expected_in(unavg_expected_in[16 * (25 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance26(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[416+:16]),
		.weights(weights[17 * (26 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[442+:17]),
		.activation_lower_bound(activation_lower_bound[442+:17]),
		.expected_out(expected_out[416+:16]),
		.expected_in(unavg_expected_in[16 * (26 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance27(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[432+:16]),
		.weights(weights[17 * (27 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[459+:17]),
		.activation_lower_bound(activation_lower_bound[459+:17]),
		.expected_out(expected_out[432+:16]),
		.expected_in(unavg_expected_in[16 * (27 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance28(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[448+:16]),
		.weights(weights[17 * (28 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[476+:17]),
		.activation_lower_bound(activation_lower_bound[476+:17]),
		.expected_out(expected_out[448+:16]),
		.expected_in(unavg_expected_in[16 * (28 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance29(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[464+:16]),
		.weights(weights[17 * (29 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[493+:17]),
		.activation_lower_bound(activation_lower_bound[493+:17]),
		.expected_out(expected_out[464+:16]),
		.expected_in(unavg_expected_in[16 * (29 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance30(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[480+:16]),
		.weights(weights[17 * (30 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[510+:17]),
		.activation_lower_bound(activation_lower_bound[510+:17]),
		.expected_out(expected_out[480+:16]),
		.expected_in(unavg_expected_in[16 * (30 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance31(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[496+:16]),
		.weights(weights[17 * (31 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[527+:17]),
		.activation_lower_bound(activation_lower_bound[527+:17]),
		.expected_out(expected_out[496+:16]),
		.expected_in(unavg_expected_in[16 * (31 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance32(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[512+:16]),
		.weights(weights[17 * (32 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[544+:17]),
		.activation_lower_bound(activation_lower_bound[544+:17]),
		.expected_out(expected_out[512+:16]),
		.expected_in(unavg_expected_in[16 * (32 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance33(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[528+:16]),
		.weights(weights[17 * (33 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[561+:17]),
		.activation_lower_bound(activation_lower_bound[561+:17]),
		.expected_out(expected_out[528+:16]),
		.expected_in(unavg_expected_in[16 * (33 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance34(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[544+:16]),
		.weights(weights[17 * (34 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[578+:17]),
		.activation_lower_bound(activation_lower_bound[578+:17]),
		.expected_out(expected_out[544+:16]),
		.expected_in(unavg_expected_in[16 * (34 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance35(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[560+:16]),
		.weights(weights[17 * (35 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[595+:17]),
		.activation_lower_bound(activation_lower_bound[595+:17]),
		.expected_out(expected_out[560+:16]),
		.expected_in(unavg_expected_in[16 * (35 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance36(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[576+:16]),
		.weights(weights[17 * (36 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[612+:17]),
		.activation_lower_bound(activation_lower_bound[612+:17]),
		.expected_out(expected_out[576+:16]),
		.expected_in(unavg_expected_in[16 * (36 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance37(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[592+:16]),
		.weights(weights[17 * (37 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[629+:17]),
		.activation_lower_bound(activation_lower_bound[629+:17]),
		.expected_out(expected_out[592+:16]),
		.expected_in(unavg_expected_in[16 * (37 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance38(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[608+:16]),
		.weights(weights[17 * (38 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[646+:17]),
		.activation_lower_bound(activation_lower_bound[646+:17]),
		.expected_out(expected_out[608+:16]),
		.expected_in(unavg_expected_in[16 * (38 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance39(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[624+:16]),
		.weights(weights[17 * (39 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[663+:17]),
		.activation_lower_bound(activation_lower_bound[663+:17]),
		.expected_out(expected_out[624+:16]),
		.expected_in(unavg_expected_in[16 * (39 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance40(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[640+:16]),
		.weights(weights[17 * (40 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[680+:17]),
		.activation_lower_bound(activation_lower_bound[680+:17]),
		.expected_out(expected_out[640+:16]),
		.expected_in(unavg_expected_in[16 * (40 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance41(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[656+:16]),
		.weights(weights[17 * (41 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[697+:17]),
		.activation_lower_bound(activation_lower_bound[697+:17]),
		.expected_out(expected_out[656+:16]),
		.expected_in(unavg_expected_in[16 * (41 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance42(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[672+:16]),
		.weights(weights[17 * (42 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[714+:17]),
		.activation_lower_bound(activation_lower_bound[714+:17]),
		.expected_out(expected_out[672+:16]),
		.expected_in(unavg_expected_in[16 * (42 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance43(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[688+:16]),
		.weights(weights[17 * (43 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[731+:17]),
		.activation_lower_bound(activation_lower_bound[731+:17]),
		.expected_out(expected_out[688+:16]),
		.expected_in(unavg_expected_in[16 * (43 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance44(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[704+:16]),
		.weights(weights[17 * (44 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[748+:17]),
		.activation_lower_bound(activation_lower_bound[748+:17]),
		.expected_out(expected_out[704+:16]),
		.expected_in(unavg_expected_in[16 * (44 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance45(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[720+:16]),
		.weights(weights[17 * (45 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[765+:17]),
		.activation_lower_bound(activation_lower_bound[765+:17]),
		.expected_out(expected_out[720+:16]),
		.expected_in(unavg_expected_in[16 * (45 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance46(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[736+:16]),
		.weights(weights[17 * (46 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[782+:17]),
		.activation_lower_bound(activation_lower_bound[782+:17]),
		.expected_out(expected_out[736+:16]),
		.expected_in(unavg_expected_in[16 * (46 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance47(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[752+:16]),
		.weights(weights[17 * (47 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[799+:17]),
		.activation_lower_bound(activation_lower_bound[799+:17]),
		.expected_out(expected_out[752+:16]),
		.expected_in(unavg_expected_in[16 * (47 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance48(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[768+:16]),
		.weights(weights[17 * (48 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[816+:17]),
		.activation_lower_bound(activation_lower_bound[816+:17]),
		.expected_out(expected_out[768+:16]),
		.expected_in(unavg_expected_in[16 * (48 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance49(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[784+:16]),
		.weights(weights[17 * (49 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[833+:17]),
		.activation_lower_bound(activation_lower_bound[833+:17]),
		.expected_out(expected_out[784+:16]),
		.expected_in(unavg_expected_in[16 * (49 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance50(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[800+:16]),
		.weights(weights[17 * (50 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[850+:17]),
		.activation_lower_bound(activation_lower_bound[850+:17]),
		.expected_out(expected_out[800+:16]),
		.expected_in(unavg_expected_in[16 * (50 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance51(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[816+:16]),
		.weights(weights[17 * (51 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[867+:17]),
		.activation_lower_bound(activation_lower_bound[867+:17]),
		.expected_out(expected_out[816+:16]),
		.expected_in(unavg_expected_in[16 * (51 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance52(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[832+:16]),
		.weights(weights[17 * (52 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[884+:17]),
		.activation_lower_bound(activation_lower_bound[884+:17]),
		.expected_out(expected_out[832+:16]),
		.expected_in(unavg_expected_in[16 * (52 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance53(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[848+:16]),
		.weights(weights[17 * (53 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[901+:17]),
		.activation_lower_bound(activation_lower_bound[901+:17]),
		.expected_out(expected_out[848+:16]),
		.expected_in(unavg_expected_in[16 * (53 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance54(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[864+:16]),
		.weights(weights[17 * (54 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[918+:17]),
		.activation_lower_bound(activation_lower_bound[918+:17]),
		.expected_out(expected_out[864+:16]),
		.expected_in(unavg_expected_in[16 * (54 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance55(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[880+:16]),
		.weights(weights[17 * (55 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[935+:17]),
		.activation_lower_bound(activation_lower_bound[935+:17]),
		.expected_out(expected_out[880+:16]),
		.expected_in(unavg_expected_in[16 * (55 * N)+:16 * N])
	);
	neuron_learn #(.N(N)) instance56(
		.clock(clock),
		.valid(valid),
		.learn(learn),
		.in(in),
		.out(out[896+:16]),
		.weights(weights[17 * (56 * N)+:17 * N]),
		.activation_upper_bound(activation_upper_bound[952+:17]),
		.activation_lower_bound(activation_lower_bound[952+:17]),
		.expected_out(expected_out[896+:16]),
		.expected_in(unavg_expected_in[16 * (56 * N)+:16 * N])
	);
endmodule