function result = myFunction(input)
  % Some code here that might cause an error
  if input < 0
    error('Input must be non-negative');
  end
  result = someCalculation(input);
end

function output = someCalculation(x)
  % some code which throws error when input is very large 
  output = x^10; % Exponentiation can lead to overflow errors
end