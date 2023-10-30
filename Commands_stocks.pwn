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
