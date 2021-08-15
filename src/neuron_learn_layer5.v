// generated by sv2v
module neuron_learn_layer5 (
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
	output wire [79:0] out;
	output wire [((5 * N) * 17) - 1:0] weights;
	output wire [84:0] activation_upper_bound;
	output wire [84:0] activation_lower_bound;
	input wire [79:0] expected_out;
	output wire [(N * 16) - 1:0] expected_in;
	wire [((5 * N) * 16) - 1:0] unavg_expected_in;
	unit_arr_average #(
		.N(5),
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
endmodule
