$Users = Import-Csv "../data/new-users.csv"

foreach ($User in $Users) {

    Write-Output "Starting onboarding for $($User.DisplayName)"

    # Create user
    .\create-user.ps1 -User $User

    Write-Output "Finished onboarding for $($User.DisplayName)"
}
