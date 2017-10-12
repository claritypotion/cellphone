private _remotePlayer = [_this,0,"",[""]] call BIS_fnc_param;
private _frequency = [_this,1,"",[""]] call BIS_fnc_param;
private _return = true;

if(life_cellphone_frequency != _frequency) then {
  _return = false;
} else {
  if(life_cellphone_remotePlayer != _remotePlayer) then {
    _return = false;
  }
}

_return;