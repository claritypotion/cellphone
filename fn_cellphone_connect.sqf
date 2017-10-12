private _remotePlayer = [_this,0,"",[""]] call BIS_fnc_param;
private _frequency = [_this,1,"",[""]] call BIS_fnc_param;

life_cellphone_frequency = _frequency;
life_cellphone_baseFrequency = [_radio, _channel] call TFAR_fnc_GetChannelFrequency;
life_cellphone_remotePlayer = _remotePlayer;
[_radio, _channel, _frequency] call TFAR_fnc_SetChannelFrequency;


// Проверяем говорит ли с нами другой игрок каждые 5 минут
while {life_cellphone_busy} do {
  sleep(5);
  private ping = [player, _frequency] remoteExec ['life_fnc_cellphone_ping', _remotePlayer];
  if(!ping) exitWith {
    [_remotePlayer] call ['life_fnc_endCall'];
  }
}