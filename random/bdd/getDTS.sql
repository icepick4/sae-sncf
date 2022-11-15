CREATE OR REPLACE PROCEDURE TCHOU.getDTS(
v_start IN DELTA_TIME_STATION.START_STATION_ID%type,
v_end IN  DELTA_TIME_STATION.END_STATION_ID%type,
v_ETA OUT DELTA_TIME_STATION.DELTA_TIME%type)
AS

BEGIN 
select DELTA_TIME into v_ETA from DELTA_TIME_STATION where (START_STATION_ID = v_start AND 
    END_STATION_ID = v_end) OR (START_STATION_ID =  v_end AND 
    END_STATION_ID = v_start);

END;