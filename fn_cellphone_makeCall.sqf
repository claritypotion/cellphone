// fn_cellphone_makeCall.sqf

life_cellphone_busy = true;
private _playerToCall = objNull;

{
  private _phoneNumber = _x getVariable "phoneNumber";
  if(life_cellphone_numberToCall == _phoneNumber) then {
    _playerToCall = _x;
  }
} forEach playableUnits;

// Челика которому звоним нет в онлайне,
// Либо такого номера вообще нет
if(_playerToCall == objNull) exitWith {
  hint "Номер не обслуживается";
};

life_cellphone_remotePlayer = _playerToCall;
life_cellphone_callingTo = _playerToCall;

life_cellphone_frequency = str(round(random(4999) + 45000));
[player, life_cellphone_frequency] remoteExec ['life_fnc_cellphone_makeCall', _playerToCall];
