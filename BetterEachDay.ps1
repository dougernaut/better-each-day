######################
# Accept arguments
###################### 
param ($startDate, $increment, $activity)

######################
#Setting the variables
######################
$currentDay = Get-Date
#For now we are using 1 Jan of the current year as the start date.
#TODO: Add ability for user input of start date
$firstDay = "01/01/"+$currentDay.Year
if ($activity -eq $null) {    
    $activity = "your activity"
}

# Calculate the number of days since the first day
$datesDifference = ($currentDay-(get-date $firstDay))
$days = $datesDifference.Days
#print results to the screen
write-host "Today is day $days of the current year."
write-host "You should do $days reps of $activity today!"