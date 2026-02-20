$subnet = "10.100.4"
for ($i=1; $i -le 254; $i++) {
    $ip = "$subnet.$i"
    if (Test-Connection $ip -Count 1 -Quiet) {
        Write-Host "$ip is up"
    }
}
