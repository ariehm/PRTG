function Get-PRTGSensorInGroup {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$false,
                   ValueFromPipeline=$true)]
        [String]$GroupID=0,
        [Parameter(Mandatory=$false)]
        [String]$Count=2500
    )
    try {
        $url = "http://$env:PRTGHost/api/table.xml?content=sensors&output=csvtable&columns=objid,probe,group,device,sensor,status,message,lastvalue,priority,favorite,tags&id=$GroupID&count=$Count&$env:PRTGAuthenticationString"
        $request = Invoke-WebRequest -Uri $url -MaximumRedirection 0 -ErrorAction Ignore
        convertFrom-csv $request -WarningAction SilentlyContinue
    } catch {
        throw $_
    }
}