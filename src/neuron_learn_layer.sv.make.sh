#!/bin/bash
set -e

part1() {
sed "s|@|$1|g" << 'EOF'
    neuron_learn #(.N(N)) instance@ (.clock(clock), .valid(valid), .learn(learn), .in(in), .out(out[@]), .weights(weights[@]), .activation_upper_bound(activation_upper_bound[@]), .activation_lower_bound(activation_lower_bound[@]), .expected_out(expected_out[@]), .expected_in(unavg_expected_in[@]));
EOF
}

mod() {
sed "s|*|$1|g" << 'EOF'
// generated, do not edit
`include "defs.svh"
module neuron_learn_layer* #(
    parameter N = 16
) (
    input bit clock,
    input bit valid,
    input bit learn,
    input unit_t in [N-1:0],
    output unit_t out [*-1:0],

    output unit_signed_t weights [*-1:0][N-1:0],
    output unit_signed_t activation_upper_bound [*-1:0],
    output unit_signed_t activation_lower_bound [*-1:0],

    input unit_t expected_out [*-1:0],
    output unit_t expected_in [N-1:0]
);

    unit_t unavg_expected_in [*-1:0][N-1:0];
    unit_arr_average #(.N(*), .LEN(N)) avg (.in(unavg_expected_in), .out(expected_in));

EOF
local i=0
while [[ "$i" -lt "$1" ]]; do
    part1 "$i"
    (( i += 1 ))
done
cat << 'EOF'

endmodule
EOF
}

i=1
while [[ "$i" -le 64 ]]; do
    mod "$i" > neuron_learn_layer"$i".sv
    (( i += 1 ))
done
