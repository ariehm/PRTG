function New-PRTGApiCall {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$false)]
        [ValidateNotNullOrEmpty()]
        $auth=$env:PRTGAuthenticationString,
        [Parameter(Mandatory=$false)]
        [ValidateNotNullOrEmpty()]
        $server=$env:PRTGHost,
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        $query
    )
    $response = "https://$server/api/$query&$auth"
    return $response
}