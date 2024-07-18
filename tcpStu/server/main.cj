package tcpStu.server

import std.socket.TcpServerSocket
import std.time.*
import std.sync.*

let SERVER_PORT: UInt16 = 8989

func runTcpServer() {
    try (serverSocket = TcpServerSocket(bindAt: SERVER_PORT)) {
        serverSocket.bind()
        try (client = serverSocket.accept()) {
            let buf = Array<Byte>(10, item: 0)
            let count = client.read(buf)
            println("Server read ${count} bytes: ${buf}")
        }
    }
}

main() {
    runTcpServer()
}