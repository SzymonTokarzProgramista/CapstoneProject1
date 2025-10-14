% Used model: TRAS_wzorzec.slx

% 1 measurement of dc motor (just simulink)
% 2 measurement of thrust using weights or sth
% 3 model the 

% wieszamy obciazniki i dobieramy sterowanie tak zeby byl poziom
% Poziom to jest leveled angle 0.789927423379634 rad przy enkoderze wyzerowanym w
% skrajnej dolnej 

hanging_masses =    [-26 -16  -9    0       9   16     26      40      55      69      83]
control =           [0   .19  0.27  0.34    .44 .48    0.54    0.65    0.77    0.895   1]
encoder =           [0.8    0.8     0.8]