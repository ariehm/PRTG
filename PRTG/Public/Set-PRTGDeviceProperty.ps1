function Set-PRTGDeviceProperty {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true)]
        [string]$DeviceID,
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true)]
        [string]$Property,
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true)]
        [string]$Value
    )
    try {
        $query = "setobjectproperty.htm?id=$DeviceID&name=$Property&value=$Value"
        $url = New-PRTGApiCall -query $query
        $request = Invoke-WebRequest -Uri $url -MaximumRedirection 0 -ErrorAction Ignore
        return $request
    } catch {
        throw $_
    }
}