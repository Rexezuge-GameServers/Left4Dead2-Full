# Left4Dead2-Full

## Source

[Github/Rexezuge-GameServers/Left4Dead2-Full](https://github.com/Rexezuge-GameServers/Left4Dead2-Full)

## Launch Server

👉 Setup Persist Volumes

```bash
sudo mkdir -p /L4D2Server/Addons
sudo mkdir -p /L4D2Server/Ems
sudo chown -R 27015:27015 /L4D2Server/Addons
sudo chown -R 27015:27015 /L4D2Server/Ems
sudo chmod -R 777 /L4D2Server/Addons
sudo chmod -R 777 /L4D2Server/Ems
```

✅ Launch Server

```bash
sudo mkdir -p /L4D2Server/Addons
sudo mkdir -p /L4D2Server/Ems
sudo chown -R 27015:27015 /L4D2Server
sudo chmod -R 777 /L4D2Server
docker run -d \
    --name L4D2-Server \
    -p 27015:27015/udp \
    -v /L4D2Server/Addons:/L4D2Content/left4dead2/addons:ro \
    -v /L4D2Server/Ems:/L4D2Content/left4dead2/ems \
    --cap-drop=ALL \
    --log-driver=journald \
    rexezuge/l4d2-server-full
```
