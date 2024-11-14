{
  description = "❄️ Soothing pastel module for Nix";

  inputs = {
    catppuccin-palette.url = "github:catppuccin/palette";
    catppuccin-palette.flake = false;
    flake-compat.url = "https://flakehub.com/f/edolstra/flake-compat/1.tar.gz";
  };

  outputs = { ... }: {
    lib = import ./lib;
    mocha = import ./module/mocha.nix;
    macchiato = import ./module/macchiato.nix;
    frappe = import ./module/frappe.nix;
    latte = import ./module/latte.nix;
  };
}
