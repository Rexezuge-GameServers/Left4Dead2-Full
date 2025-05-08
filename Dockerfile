FROM rexezugegameservers/left4dead2-staticassets AS asserts

FROM rexezugegameservers/left4dead2-base

COPY --from=asserts / /

# Image Label(s)
LABEL UPSTREAM="https://github.com/Rexezuge-GameServers/Left4Dead2-Full"
