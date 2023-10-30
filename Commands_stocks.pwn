stock IsVehSeatTaken(vehicleid, seatid)
{
   for(new i=0; i<MAX_PLAYERS; i++)
   {
       if(GetPlayerVehicleID(i) == vehicleid && GetPlayerVehicleSeat(i) == seatid) return 1;
   }
   return 0;
}
