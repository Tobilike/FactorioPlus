-- Specifies set of pictures and animations used by more entities, to avoid duplication.
-- The standard set of transport belt pictures (vertical/horizontal + endings + startings)
-- are used in transport belt, transport belt to ground and splitter.


slow_belt_animation_set =
{
  animation_set =
  {
    filename = "__factorioplus__/graphics/belts/basic-transport-belt.png",
    priority = "extra-high",
    width = 128,
    height = 128,
	scale = 0.5,
    frame_count = 32,
    direction_count = 20,
  },
}

turbo_belt_animation_set =
{
	--alternate = true,
  animation_set =
  {
    filename = "__factorioplus__/graphics/belts/turbo-transport-belt.png",
    priority = "extra-high",
	size = 128,
    scale = 0.5,
    frame_count = 32,
    direction_count = 20,
  },
}

supersonic_belt_animation_set =
{
	--alternate = true,
  animation_set =
  {
    filename = "__factorioplus__/graphics/belts/supersonic-transport-belt.png",
    priority = "extra-high",
	size = 128,
    scale = 0.5,
    frame_count = 32,
    direction_count = 20,
  },
}