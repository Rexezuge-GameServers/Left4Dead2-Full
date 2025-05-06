# Left 4 Dead 2 Server Docker Image (Full Content)

## Source

[Github/Rexezuge/L4D2-Dedicated-Server-Full-Docker](https://github.com/Rexezuge/L4D2-Dedicated-Server-Full-Docker)

## Launch Server

```bash
sudo mkdir -p /L4D2Server/Addons
sudo mkdir -p /L4D2Server/Ems
sudo chown -R 27015:27015 /L4D2Server
docker run -d \
    --name L4D2-Server \
    -p 27015:27015/udp \
    -v /L4D2Server/Addons:/L4D2Content/left4dead2/addons \
    -v /L4D2Server/Ems:/L4D2Content/left4dead2/ems \
    --cap-drop=ALL \
    --log-driver=journald \
    rexezuge/l4d2-server-full
```
