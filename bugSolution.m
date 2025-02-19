function result = myFunctionImproved(input)
  % Input validation
  if input < 0
    error('Input must be non-negative');
  end

  try
    result = someCalculationImproved(input);
  catch ME
    if strcmp(ME.identifier, 'MATLAB:pmaxsize') || strcmp(ME.identifier, 'MATLAB:nearlySingularMatrix') 
       % Handle overflow or similar errors 
       result = NaN; % or any appropriate error handling
       warning('Calculation resulted in overflow or other error. Returning NaN.');
    else
      rethrow(ME); % Re-throw unexpected errors
    end
  end
end

function output = someCalculationImproved(x)
  % Improved calculation to handle potential overflow 
  try
     output = x^10; 
  catch
      output = NaN; %Handle potential errors like overflow 
  end
end