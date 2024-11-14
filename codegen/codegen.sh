#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

nix() {
  command nix --extra-experimental-features "nix-command" "$@"
}
export -f nix

for flavor in mocha macchiato frappe latte; do
  nix eval --impure --expr "import ./codegen.nix { flavor = ''$flavor''; }" | nix shell nixpkgs/nixos-unstable#nixfmt-rfc-style --command nixfmt - > ../module/"$flavor.nix"
done
