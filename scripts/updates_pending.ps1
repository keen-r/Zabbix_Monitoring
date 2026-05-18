# Checks Windows for pending software updates using the Windows Update API
# Returns the total number of uninstalled updates for Zabbix monitoring

try {
    $count = (New-Object -ComObject Microsoft.Update.Session).CreateUpdateSearcher().Search("IsInstalled=0 and Type='Software'").Updates.Count
    [int]$count
}
catch {
    0
}
