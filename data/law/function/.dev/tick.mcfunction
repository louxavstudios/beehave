# Run last so enabled Law notices take actionbar priority over the clock and
# repair hint. The global toggle persists through reloads.
execute if score #enabled law.control matches 1 run function law:.dev/runtime
