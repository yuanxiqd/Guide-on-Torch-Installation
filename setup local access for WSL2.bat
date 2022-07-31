netsh interface portproxy delete v4tov4 listenport=8888 listenaddress=0.0.0.0
netsh interface portproxy add v4tov4 listenport=8888 listenaddress=0.0.0.0 connectport=8888 connectaddress=localhost