FROM rexezuge/l4d2-server AS runtime

ARG SRV_UPDATE_SERVER=1 \
    SRV_REPAIR_SERVER=1 \
    SRV_LAUNCH_SERVER=0

RUN /.Entrypoint.sh

FROM scratch

COPY --from=runtime / /

# Change User
USER steam

# Image Label(s)
LABEL UPSTREAM="https://github.com/Rexezuge/L4D2-Dedicated-Server-Full-Docker"

# Port Forwarding
#   Only Game Server Port is Open by Default
#   Uncomment the Following Line if You Want RCON
#   EXPOSE 27015/tcp
EXPOSE 27015/udp

# Volume
VOLUME /L4D2Content/left4dead2/addons \
       /L4D2Content/left4dead2/ems \
       /L4D2Content/left4dead2/cfg

# Environment(s)
ENV SRV_PORT=27015 \
    SRV_MAP="c14m1_junkyard" \
    SRV_SECURE_SERVER=1 \
    SRV_LAUNCH_SERVER=1
ENV CFG_RESTORE_DEFAULT=1 \
    CFG_INFORMATION_HOSTNAME="Community Left4Dead 2 World Server" \
    CFG_INFORMATION_STEAM_GROUP=0 \
    CFG_SETTINGS_GAME_TYPE="coop,realism"

# Set Entrypoint
ENTRYPOINT ["/bin/bash", "-c", "exec /.Entrypoint.sh"]
