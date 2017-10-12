private _caller = [_this,0,"",[""]] call BIS_fnc_param;
private _frequency = [_this,1,"",[""]] call BIS_fnc_param;

if(life_cellphone_busy) exitWith {
  [player] remoteExec ['life_fnc_cellphone_endCall', _caller];
};

life_cellphone_callingFrom = _caller;
life_cellphone_frequency = _frequency;
life_cellphone_busy = true;