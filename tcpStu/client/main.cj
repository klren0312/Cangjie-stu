package tcpStu.client
import std.socket.TcpSocket

main() {
  try (socket = TcpSocket("127.0.0.1", 8989)) {
    socket.connect()
    socket.write("test")
  }
}