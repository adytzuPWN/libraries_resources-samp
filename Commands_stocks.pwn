stock IsVehSeatTaken(vehicleid, seatid)
{
   for(new i=0; i<MAX_PLAYERS; i++)
   {
       if(GetPlayerVehicleID(i) == vehicleid && GetPlayerVehicleSeat(i) == seatid) return 1;
   }
   return 0;
}

stock IsVehSeatTakenv2(vehicleid, seatid)
{
   foreach(new playerid : Player)
   {
      if(IsPlayerInVehicle(playerid, vehicleid) && GetPlayerVehicleSeat(playerid) == seatid)
         return true;
   }
   return false;
}


COMMANDS:

YCMD:slap(playerid, params[], help)
{
   if(!Iter_Contains(AdminsS, playerid))
      return SendPlayerMess(playerid, -1, "you do not have access to this command");
   new id - INVALID_PLAYER_ID;
   if(sscanf(params, "u", id))
      return SendMessageFunc(playerid, -1, "/slap <name/id>");
   /*
   function if the player is connected.
   */
   new Float:x, Float:y, Float:z;
   GetPlayerPos(id, x, y, z);
   SetPlayerPos(id, x, y, (z + 5));

   new Float:Health;
   GetPlayerHealth(id, health);
   SetPlayerHealth(id, (health - 5));

   SendPlayerNotice(playerid, -1, "you slapped him." and here you will customize the message);
   return true;
}
