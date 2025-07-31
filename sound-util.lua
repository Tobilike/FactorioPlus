function sound_variations_speed(filename_string, variations, volume_parameter, base_speed, speed_deviation, modifiers_parameter)
  local result = {}
  for i = 1,variations do
    result[i] = { filename = filename_string .. "-" .. i .. ".ogg", volume = volume_parameter or 0.5, speed = base_speed + ( i * speed_deviation) or 1.0 }
    if modifiers_parameter then
      result[i].modifiers = modifiers_parameter
    end
  end
  return result
end