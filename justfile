# List available recipes
list:
    @just --list

# Format typst codes (requires typstyle)
fmt:
    typstyle src/ tests/ --inplace

# Run tests (requires tytanic)
test:
    tt util vcs ignore
    tt run
