# MATLAB Uncommon Error: Overflow and Negative Input Handling

This repository demonstrates an uncommon error in MATLAB related to potential overflow issues and the lack of handling for negative inputs. The function `myFunction` performs a calculation, and without proper error handling, it can throw errors for various invalid inputs.

## Bug Description
The original `myFunction` does not effectively handle negative inputs or large positive inputs that might lead to overflow during exponentiation. This results in MATLAB throwing runtime errors, interrupting the program's execution.

## Solution
The provided solution improves the function by implementing:
1. Input validation to prevent negative inputs.
2. Overflow handling using `try-catch` blocks for large inputs, to prevent MATLAB from crashing.
3. More informative error messages to aid debugging.

## How to Run
1. Save the code in `bug.m` and `bugSolution.m` files.
2. Run the file  `bug.m` and observe the error.  Then run `bugSolution.m` to see the improved version.

## Note:
This demonstrates a scenario where MATLAB's error handling might not immediately catch all issues related to data type limitations. Always consider such possibilities when working with functions that handle numeric inputs.