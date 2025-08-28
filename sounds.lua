require("sound-util")
local sounds = {}

sounds.gun_turret_gunshot_light =
{
  variations = sound_variations_speed("__base__/sound/fight/gun-turret-gunshot", 4, 0.4, 1.2, 0.05 , {volume_multiplier("main-menu", 0.9), volume_multiplier("space-platform", 0.5)}),
  aggregation = {max_count = 8, remove = true, count_already_playing = true, priority = "newest"}
}



sounds.gun_uzi =
{
  variations = sound_variations_speed
  ("__factorioplus__/sounds/uzi-gunshot", 
  3, -- how many variations (appends "-1" "-2" "-3" etc to file path.
  0.5, -- volume 
  1.3, -- base speed
  0.1, -- increment sound speed each variation by this much.
	  {
		  volume_multiplier("main-menu", 0.9), 
		  volume_multiplier("space-platform", 0.5)
	  }
  ),
  aggregation = 
  {
	  max_count = 6, 
	  remove = true, 
	  count_already_playing = true, 
	  priority = "newest"
  }
 
}

sounds.gun_blunderbuss =
{
  variations = sound_variations_speed
  ("__factorioplus__/sounds/blunderbuss-gunshot", 
  2, -- how many variations (appends "-1" "-2" "-3" etc to file path.
  0.7, -- volume 
  1, -- base speed
  -0.05, -- increment sound speed each variation by this much.
	  {
		  volume_multiplier("main-menu", 0.9), 
		  volume_multiplier("space-platform", 0.5)
	  }
  ),
  aggregation = 
  {
	  max_count = 6, 
	  remove = true, 
	  count_already_playing = true, 
	  priority = "newest"
  }
 
}


sounds.gun_turret_gunshot_heavy =
{
  variations = sound_variations_speed
  ("__factorioplus__/sounds/turret-heavy-gunshot", 
  3, 
  0.4, 
  0.75,
  -0.05,
	  {
		  volume_multiplier("main-menu", 0.9), 
		  volume_multiplier("space-platform", 0.5)
	  }
  ),
  aggregation = 
  {
	  max_count = 6, 
	  remove = true, 
	  count_already_playing = true, 
	  priority = "newest"
  }
 
}

sounds.car_horn =
{
	{
      filename = "__factorioplus__/sounds/car-horn-small.ogg",
      volume = 0.8,
	  speed = 1
    },
}

sounds.turret_pistol =
{
  variations =
  {
    {
      filename = "__base__/sound/fight/light-gunshot-1.ogg",
      volume = 0.7,
	  speed = 0.8
    },
    {
      filename = "__base__/sound/fight/light-gunshot-2.ogg",
      volume = 0.7,
	  speed = 0.8
    },
    {
      filename = "__base__/sound/fight/light-gunshot-3.ogg",
      volume = 0.7,
	  speed = 0.8
    },
    {
      filename = "__base__/sound/fight/light-gunshot-4.ogg",
      volume = 0.7,
	  speed = 0.8
    },
    {
      filename = "__base__/sound/fight/light-gunshot-5.ogg",
      volume = 0.7,
	  speed = 0.8
    },
    {
      filename = "__base__/sound/fight/light-gunshot-6.ogg",
      volume = 0.7,
	  speed = 0.8
    },
    {
      filename = "__base__/sound/fight/light-gunshot-7.ogg",
      volume = 0.7,
	  speed = 0.8
    }
  }
}

return sounds