function Get-PRTGSensorInGroup {
    Param(
        [Parameter(Mandatory=$false,
                   ValueFromPipeline=$true)]
        [String]$StartingID=0
    )
    try {
        $url = "http://$env:PRTGHost/api/table.xml?content=sensors&output=csvtable&columns=objid,probe,group,device,sensor,status,message,lastvalue,priority,favorite,tags&id=$StartingID&count=2500&$env:PRTGAuthenticationString"
        $request = Invoke-WebRequest -Uri $url -MaximumRedirection 0 -ErrorAction Ignore
        convertFrom-csv $request -WarningAction SilentlyContinue
    } catch {
        throw $_
    }
}