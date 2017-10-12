private _caller = [_this,0,"",[""]] call BIS_fnc_param;

// Сейчас мы ему уже не звоним и с ним не говорим
if(life_cellphone_remotePlayer != _caller) exitWith {};

private _radio = call TFAR_fnc_activeSwRadio;
private _channel = _radio call TFAR_fnc_getSwChannel;

life_cellphone_frequency = life_cellphone_baseFrequency;
life_cellphone_busy = false;
life_cellphone_callingTo = objNull;
life_cellphone_remotePlayer = objNull;
life_cellphone_callingFrom = objNull;
player setVariable ["tf_sendingDistanceMultiplicator",1,true];
player setVariable ["tf_receivingDistanceMultiplicator",1,true];
player setVariable ["TF_terrain_interception_coefficient", 7, true];