
module stepper(input step, 
               input dir,
               output [3:0] motor);
  
  reg [1:0]state;
  
  assign motor[3] = ~state[1];
  assign motor[1] = (~state[1] && state[0]) || (state[1] && ~state[0]);

  assign motor[2] = ~motor[3];
  assign motor[0] = ~motor[1];

  always @(posedge step) begin
    state <= state + 1;
  end
  
endmodule
