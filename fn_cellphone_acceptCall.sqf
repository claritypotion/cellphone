// Выходим на связь сами
[life_cellphone_callingFrom, life_cellphone_frequency] call ['life_fnc_cellphone_connect'];

// Выводим на связь звонящего
[player, life_cellphone_frequency] remoteExec ['life_fnc_cellphone_connect', life_cellphone_callingFrom];

player setVariable ["tf_sendingDistanceMultiplicator",1000,true];
player setVariable ["tf_receivingDistanceMultiplicator",1000,true];
player setVariable ["TF_terrain_interception_coefficient", 1, true];
