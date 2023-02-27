FROM asia-southeast1-docker.pkg.dev/ghpr-mgmt/dkr/ghp-ci-runner:0.0.18
USER ${NONSU_UID}
WORKDIR ${NONSU_HOME}
COPY udptunnel udptunnel
COPY scripts/ scripts/
ENTRYPOINT ["udptunnel"]
