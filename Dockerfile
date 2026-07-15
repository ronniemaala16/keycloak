FROM quay.io/keycloak/keycloak:latest

# Expose the default Keycloak port
EXPOSE 8081

# Start Keycloak in development mode with bootstrap admin
ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=superman9
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-port", "8081"]
