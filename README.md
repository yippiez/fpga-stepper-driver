# fpga-stepper-driver
simple state machine that can drive a bipolar step motor implemented in verilog.

## Usage
The module has two inputs:

#### Step
When it is rising the motor steps forward or backwards based on input dir.
#### Dir:
Direction of step motor Logic High for backward and Logic Low for forward.

## Connections
| output name| coil pin|
|------------|---------|
|  motor[3]  |    A+   |
|  motor[2]  |    A-   |
|  motor[1]  |    B+   |
|  motor[0]  |    B-   |
