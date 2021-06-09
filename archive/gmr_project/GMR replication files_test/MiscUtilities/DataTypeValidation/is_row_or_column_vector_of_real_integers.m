function isIntsRowOrColVec = is_row_or_column_vector_of_real_integers(data)
% This helper validates if the input is a row or col vec of real integers.
%
% INPUTS:
%   -> data: input data
%
% OUTPUTS
%   -> isIntsRowOrColVec: true/false
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
isIntsRowOrColVec = (is_row_or_column_array(data)&&is_real_integers(data));

end