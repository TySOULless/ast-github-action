#Use AST Base image
FROM checkmarx/ast-cli:2.2.3

USER nonroot

#Copy the entrypoint script and properties used for the action
COPY --chmod=111 entrypoint.sh /app/entrypoint.sh
COPY --chmod=111 cleanup.sh /app/cleanup.sh

