package httpStu
import net.http.ServerBuilder

func startServer(): Unit {
    let server = ServerBuilder()
        .port(8989)
        .addr("127.0.0.1")
        .build()
    server.distributor.register("/cj", {httpContext => 
        httpContext.responseBuilder.body("hello world")
    })

    server.serve()

}

main() {
    println("server started at http://127.0.0.1:8989")
    startServer()
}