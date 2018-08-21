import socket
import threading

bind_ip = '0.0.0.0'
bind_port = 12325

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind((bind_ip, bind_port))
server.listen(5)  # max backlog of connections

print 'Listening on {}:{}'.format(bind_ip, bind_port)


def handle_client_connection(client_socket):
    f = open('dump.bin', 'wb')
    l = 1 << 12
    while True:
        raw = client_socket.recv(l)
        print "Receive %d bytes." % len(raw)
        f.write(raw)
        if not raw:
            break
        # data = [ord(x) for x in raw]
        # for i in range(len(data)):
        #     f.write('{0:08b}'.format(data[i]))

    f.close()

    client_socket.close()

client_sock, address = server.accept()
print 'Accepted connection from {}:{}'.format(address[0], address[1])
handle_client_connection(client_sock)