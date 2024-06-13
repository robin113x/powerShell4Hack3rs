$Ports = 10, 20, 30
$ip = "192.168.229.130"
foreach ($port in $Ports) {
    try {
        $socket = New-Object System.Net.Sockets.TcpClient($ip, $port)
        if ($socket.Connected) {
            echo "$port open"
            $socket.Close()
        } else {
            echo "$port closed"
        }
    } catch {
        echo "$port closed"
    }
}
