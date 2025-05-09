FROM rexezugegameservers/left4dead2-staticassets AS asserts

FROM rexezugegameservers/left4dead2-base

COPY --from=asserts /SteamCMD /SteamCMD

COPY --from=asserts /L4D2Content /L4D2Content

# Image Label(s)
LABEL UPSTREAM="https://github.com/Rexezuge-GameServers/Left4Dead2-Full"
