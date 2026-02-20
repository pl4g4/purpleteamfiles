$subnet = "192.168.50"
for ($i=1; $i -le 254; $i++) {
    $ip = "$subnet.$i"
    if (Test-Connection $ip -Count 1 -Quiet) {
        Write-Host "$ip is up"
    }
}
