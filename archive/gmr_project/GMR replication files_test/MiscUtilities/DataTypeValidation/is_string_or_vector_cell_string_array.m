function isStrOrVecCellStrArr = is_string_or_vector_cell_string_array(data)
% This helper validates if the input is a string, row or column str array.
%
% INPUTS:
%   -> data: input data
%
% OUTPUTS
%   -> isStrOrVecCellStrArr: true/false
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
isStrOrVecCellStrArr = (ischar(data)||...
    is_row_or_column_cell_string_array(data));

end