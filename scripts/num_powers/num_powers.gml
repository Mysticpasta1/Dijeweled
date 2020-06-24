///Returns the number of gems that are powered
/// @param Gamerule_index
var count = 0
for(var i=0;i<8;i++)
{
	for(var j=0;j<8;j++)
	{
		var ge = argument0.gem_board1[i,j]
		if (ge != noone)
		{
			if (ge.gempower > 0 || ge.amHype) count++
		}
	}
}

return count;