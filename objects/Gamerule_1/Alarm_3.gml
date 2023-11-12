/// @description blazing speed countdown
if !blazingspeed && IsGemActive
{
	if blazingspeedchain > 0 && blazingspeedchain < 20
	{
		if blazingcounter > 0 blazingcounter--
		else {
			blazingspeedchain = 0
			blazingspeedtotalchain = 0;
		}
	}
	else if blazingspeedchain >= 20
	{
		blazing_speed_enable(Board_1)
	}
}
alarm[3] = 1