######################
#Setting the variables
######################
$currentDay = Get-Date
#For now we are using 1 Jan of the current year as the start date.
#TODO: Add ability for user input of start date
$firstDay = "01/01/"+$currentDay.Year

# Calculate the number of days since the first day
$days = ($currentDay-(get-date $firstDay))
#print results to the screen
"Today is day " + $days.Days + " of the current year"