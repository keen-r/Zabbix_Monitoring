# Test DNS resolution against multiple domain controllers
# Returns number of reachable servers for Zabbix


$servers = @(
    "dc01.domain.local",
    "dc02.domain.local",
    "dc03.domain.local"
)

$count = 0

foreach ($s in $servers) {
    try {
        if (Resolve-DnsName $s -ErrorAction Stop) {
            $count++
        }
    }
    catch {}
}

Write-Output $count
