//This function demonstrates: how to get and modify array values.
//PAWN native: native PrintPawnArray(arr[], size = sizeof(arr));
cell AMX_NATIVE_CALL PrintPawnArray(AMX* amx, cell* params)
{
    //Make sure there's something to print...
    if(params[2] > 0)
    {
        cell* addr = NULL;

        //Get the address of the first value in our PAWN array.
        amx_GetAddr(amx, params[1], &addr);

        for(int i = 0, l = params[2]; i < l; i++)
        {
            //This is pretty straight forward: We dereference the addr pointer to get our value to print.
            //You should know this already, but arrays and pointers are almost the same thing, so we can use pointer
            //arithmetic to add an offset OR just use the subscript operator (in the end *(addr+1) and addr[1] are the same).
            logprintf("arr[%d] = %d", i, *(addr + i));

            //If you wanted to modify the array you would just change its value by dereferencing addr and assigning a new value. 
            //You should know this as well, im just adding it in for completeness. Here we change the first value of our array
            //to 5 (Note: Since its the first value, no offset it used).

            // *(addr) = 5;   
        }
    }
    return 1;
}
