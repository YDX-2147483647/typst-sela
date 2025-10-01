# List available recipes
list:
    @just --list

# Format typst codes (requires typstyle)
fmt *ARGS="--inplace":
    typstyle src/ tests/ {{ ARGS }}

# Run tests (requires tytanic)
test:
    tt util vcs ignore
    tt run
