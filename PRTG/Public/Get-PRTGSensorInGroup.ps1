function Get-PRTGSensorInGroup {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$false,
                   ValueFromPipeLine=$true,
                   ValueFromPipelineByPropertyName=$true)]
        [string]$GroupID=0,
        [Parameter(Mandatory=$false,
                   ValueFromPipeLine=$true,
                   ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [string]$Count=2500
    )
    try {
        $query = "table.xml?content=sensors&output=csvtable&columns=objid,probe,group,device,sensor,status,message,lastvalue,priority,favorite,tags&id=$GroupID&count=$Count"
        $url = New-PRTGApiCall -query $query
        $request = Invoke-WebRequest -Uri $url -MaximumRedirection 0 -ErrorAction Ignore
        $response = ConvertFrom-CSV $request -WarningAction SilentlyContinue
        return $response
    } catch {
        throw $_
    }
}