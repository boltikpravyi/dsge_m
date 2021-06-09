function isRealRowVec = is_real_numeric_row_vector(data)
% This helper validates if the input is a real numeric row vector.
%
% INPUTS:
%   -> data: input data
%
% OUTPUTS
%   -> isRealRowVec: true/false
%
% DETAILS: 
%   -> none
%
% NOTES:   
%   -> This utility is part of a family of utility functions used for 
%      data type validation throughout MAPS.
%
% This version: 18/01/2013
% Author(s): Matt Waldron

%% CHECK INPUT
if nargin < 1
    errId = 'MAPS:data_validation_family_of_functions:BadNargin';
    errArgs = {mfilename};
    generate_and_throw_MAPS_exception(errId,errArgs);
end

%% CHECK DATA
isRealRowVec = (is_row_array(data)&&is_numeric_and_real(data));

end