$currentDay = Get-Date
$firstDay = "01/01/"+$currentDay.Year
$days = ($currentDay-(get-date $firstDay))
"Today is day " + $days.Days + " of the current year"