# Query the total time from the Overworld.

execute store result score #EARLY_TIME calendar run time of minecraft:overworld query time

# Convert the total Overworld time into complete elapsed days.

scoreboard players operation #CURRENT_WORLD_DAY calendar = #EARLY_TIME calendar
scoreboard players operation #CURRENT_WORLD_DAY calendar /= #CONST_24000 calendar

# Apply the Gregorian calendar conversion offset.

scoreboard players operation #Z calendar = #CURRENT_WORLD_DAY calendar
scoreboard players operation #Z calendar += #DATE_OFFSET calendar

# Calculate the 400-year era.

scoreboard players operation #ERA calendar = #Z calendar
scoreboard players operation #ERA calendar /= #CONST_146097 calendar

# Calculate the day within the current 400-year era.

scoreboard players operation #DOE calendar = #Z calendar
scoreboard players operation #DOE calendar %= #CONST_146097 calendar

# Calculate the year within the current era.
#
# YOE = (
#     DOE
#     - DOE / 1460
#     + DOE / 36524
#     - DOE / 146096
# ) / 365

scoreboard players operation #YOE calendar = #DOE calendar

scoreboard players operation #TEMP calendar = #DOE calendar
scoreboard players operation #TEMP calendar /= #CONST_1460 calendar
scoreboard players operation #YOE calendar -= #TEMP calendar

scoreboard players operation #TEMP calendar = #DOE calendar
scoreboard players operation #TEMP calendar /= #CONST_36524 calendar
scoreboard players operation #YOE calendar += #TEMP calendar

scoreboard players operation #TEMP calendar = #DOE calendar
scoreboard players operation #TEMP calendar /= #CONST_146096 calendar
scoreboard players operation #YOE calendar -= #TEMP calendar

scoreboard players operation #YOE calendar /= #CONST_365 calendar

# Calculate the March-based year.

scoreboard players operation #YEAR calendar = #ERA calendar
scoreboard players operation #YEAR calendar *= #CONST_400 calendar
scoreboard players operation #YEAR calendar += #YOE calendar

# Calculate how many days occurred before the current
# March-based year.

scoreboard players operation #YEAR_DAYS calendar = #YOE calendar
scoreboard players operation #YEAR_DAYS calendar *= #CONST_365 calendar

scoreboard players operation #TEMP calendar = #YOE calendar
scoreboard players operation #TEMP calendar /= #CONST_4 calendar
scoreboard players operation #YEAR_DAYS calendar += #TEMP calendar

scoreboard players operation #TEMP calendar = #YOE calendar
scoreboard players operation #TEMP calendar /= #CONST_100 calendar
scoreboard players operation #YEAR_DAYS calendar -= #TEMP calendar

# Calculate the zero-based day within the current
# March-based year.

scoreboard players operation #DOY calendar = #DOE calendar
scoreboard players operation #DOY calendar -= #YEAR_DAYS calendar

# Calculate the March-based month index.
#
# MP = (5 * DOY + 2) / 153

scoreboard players operation #MP calendar = #DOY calendar
scoreboard players operation #MP calendar *= #CONST_5 calendar
scoreboard players operation #MP calendar += #CONST_2 calendar
scoreboard players operation #MP calendar /= #CONST_153 calendar

# Calculate the day of the month.
#
# DAY = DOY - ((153 * MP + 2) / 5) + 1

scoreboard players operation #TEMP calendar = #MP calendar
scoreboard players operation #TEMP calendar *= #CONST_153 calendar
scoreboard players operation #TEMP calendar += #CONST_2 calendar
scoreboard players operation #TEMP calendar /= #CONST_5 calendar

scoreboard players operation #DAY calendar = #DOY calendar
scoreboard players operation #DAY calendar -= #TEMP calendar
scoreboard players add #DAY calendar 1

# Convert the March-based month to January through December.

scoreboard players operation #MONTH calendar = #MP calendar
scoreboard players add #MONTH calendar 3

execute if score #MONTH calendar matches 13.. run scoreboard players operation #MONTH calendar -= #CONST_12 calendar

# January and February belong to the following normal year.

execute if score #MONTH calendar matches 1..2 run scoreboard players add #YEAR calendar 1

# Remove the temporary 400-year offset.

scoreboard players operation #YEAR calendar -= #CONST_400 calendar

# Convert the calendar to zero-based years.
# Year 1 becomes Year 0, Year 2 becomes Year 1, etc.

scoreboard players remove #YEAR calendar 1