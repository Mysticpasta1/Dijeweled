/// @description spawner for first board
// You can write your code in this editor

#region make gems for first time
//1) create gems
for(i=0;i<=global.board_rows-1;i++)
{
	for(j=0;j<=7;j++)
	{
		gem_array[i,j] = irandom_range(0,Gamerule_1.num_skin)
	}
}

//2) make the Gem_1s not match

do
{
	amready2 = false
	amready = true
	for(i=0;i<=global.board_rows-1;i++)
	{
		for(j=0;j<=7;j++)
		{
			if i >= 1 && i <= global.board_rows-2
			{
				if (gem_array[i-1,j] == gem_array[i,j]) && (gem_array[i,j] == gem_array[i+1,j])
					{
						amready = false
						do gem_array[i,j] = irandom_range(0,Gamerule_1.num_skin)
						until gem_array[i,j] != gem_array[i-1,j]
					}
			}
			
			if j >= 1 && j <= 6
			{
				if (gem_array[i,j-1] == gem_array[i,j]) && (gem_array[i,j] == gem_array[i,j+1])
					{
						amready = false
						do gem_array[i,j] = irandom_range(0,Gamerule_1.num_skin)
						until gem_array[i,j] != gem_array[i,j-1]
					}
			}
			
			
		}
	}
	
	//3 always have moves at start
	if amready && global.board_rows = 3
		{
			amready2 = true
			for(j=0;j<=7;j++)
			{
				
					if j <= 6 
					{
						if (gem_array[1,j] == gem_array[2,j+1]) && (gem_array[1,j] == gem_array[0,j+1])
						{
							amready2 = false
						}
					}
					if j >= 1
					{
						if (gem_array[1,j] == gem_array[2,j-1]) && (gem_array[1,j] == gem_array[0,j-1])
						{
							amready2 = false
						}
					}
					if j <= 4
					{
						if (gem_array[1,j] == gem_array[1,j+2]) && (gem_array[1,j] == gem_array[1,j+3])
						{
							amready2 = false
						}
					}
					if j >= 3
					{
						if (gem_array[1,j] == gem_array[1,j-2]) && (gem_array[1,j] == gem_array[1,j-3])
						{
							amready2 = false
						}
					}
				
			}
			if !amready2 //4) shuffle and retry loop if we fail to find matches
				{
					for(i=0;i<=global.board_rows-1;i++)
					{
						for(j=0;j<=7;j++)
						{
							gem_array[i,j] = irandom_range(0,Gamerule_1.num_skin)
						}
					}
				}
		}
		else amready2 = true
} until (amready = true) && (amready2 = true)

var ri = irandom(7)
var rj = irandom(7)
// and now spawn them in board1
for(i=0;i<=global.board_rows-1;i++)
{
	for(j=0;j<=7;j++)
	{
		my_x = Board_1.x + 64*j
		my_y = Board_1.y - 64*(i+1)
		my_skin = gem_array[i,j]
		Gem = instance_create_depth(my_x, my_y,-1,Gem_1) 
		if (i == ri && j == rj)
		{
			with(Gem) {set_skin(7); amCompanion = true}
		}
		else
		{
			with(Gem) set_skin(other.gem_array[other.i,other.j])
		}
		
	}
}
#endregion

instance_destroy()
//var sp, with sp
instance_change(spawner1,false)
with(spawner1)
{
	spawn_specific = false //if we do a hyper dual match, we need to spawn new hypercubes. thats when its true
	spawn_specific_array = ds_map_create()
	for(var t = 0; t<8; t++) specific[t] = 0 //index
	specific_count = 0 //on 64, spawn_specific turns false
	match_replay = false
	coalspawn = false
	bombspawn = -1 //this is the counter to use on our fresh spawned gem. if its -1 it means it wont spawn a bomb
	havedone = false
	showme = "-"
	num_choices = ds_list_create()
}