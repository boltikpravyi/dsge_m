function isTwoDimCellArr = is_two_dimensional_cell_array(data)
% This helper validates if the input is a two-dim cell array or not.
%
% INPUTS:
%   -> data: input data
%
% OUTPUTS
%   -> isTwoDimCellArr: true/false
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
isTwoDimCellArr = (is_two_dimensional(data)&&iscell(data));

end