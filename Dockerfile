# Use AST Base image
FROM checkmarx/ast-cli:2.2.8@sha256:6bdb2d0b18246ca1a269de2860938313ea14ca2d6e443c953c84fbac9ee5df85

# Copy the entrypoint script and properties used for the action
COPY entrypoint.sh /app/entrypoint.sh
COPY cleanup.sh /app/cleanup.sh

RUN chmod +x /app/entrypoint.sh \
    && chmod +x /app/cleanup.sh

# Docker actions must be run by the default Docker user (root).
USER root