// Выходим на связь сами
[life_cellphone_callingFrom, life_cellphone_frequency] call ['life_fnc_cellphone_connect'];

// Выводим на связь звонящего
[player, life_cellphone_frequency] remoteExec ['life_fnc_cellphone_connect', life_cellphone_callingFrom];