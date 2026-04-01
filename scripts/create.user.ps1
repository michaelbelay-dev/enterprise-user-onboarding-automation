param($User)

$UserParams = @{
    AccountEnabled = $true
    DisplayName = $User.DisplayName
    MailNickname = $User.UserPrincipalName.Split("@")[0]
    UserPrincipalName = $User.UserPrincipalName
    PasswordProfile = @{
        ForceChangePasswordNextSignIn = $true
        Password = "TempPassword123!"
    }
}

New-MgUser @UserParams
