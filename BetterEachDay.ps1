######################
# Accept arguments
###################### 
param ($startDate, $increment=1, $activity="your activity")

######################
#Setting the variables
######################
$currentDay = Get-Date
#For now we are using 1 Jan of the current year as the start date.
#TODO: Add ability for user input of start date
if ($null -eq $startDate) {
    $firstDay = "01/01/"+$currentDay.Year
} else {
    $firstDay = $startDate
}


# Calculate the number of days since the first day
$datesDifference = ($currentDay-(get-date $firstDay))
$days = $datesDifference.Days
$reps = $days * $increment
#print results to the screen
write-host "Today is day $days of the current year."
write-host "You should do $reps reps of $activity today!"