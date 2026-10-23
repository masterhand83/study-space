# Study vault commands. Run `just` from anywhere inside the vault.

set positional-arguments

# List available commands
default:
    @just --list

# Commit and push everything: `just sync` or `just sync "message"`
sync *message:
    ./_system/tools/sync.sh "$@"

# Create a topic folder and README: `just create-topic Systems Design`
create-topic +name:
    ./_system/tools/new-topic.sh "$*"

# Backwards-compatible name for create-topic
new-topic +name:
    ./_system/tools/new-topic.sh "$*"
