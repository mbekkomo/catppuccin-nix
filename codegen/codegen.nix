{ flavor }:
let
  pinned-commit =
    (builtins.fromJSON (builtins.readFile ../flake.lock)).nodes.catppuccin-palette.locked.rev;
  palette-url = "https://github.com/catppuccin/palette/raw/${pinned-commit}/palette.json";
  palette = builtins.fromJSON (builtins.readFile (builtins.fetchurl palette-url));

  getColorProperty = x: {
    ${x} = {
      inherit (palette.${flavor}.colors.${x})
        name
        hex
        rgb
        hsl
        ;
    };
  };
in
{
  inherit (palette.${flavor}) name emoji;
}
// (getColorProperty "rosewater")
// (getColorProperty "flamingo")
// (getColorProperty "pink")
// (getColorProperty "mauve")
// (getColorProperty "red")
// (getColorProperty "maroon")
// (getColorProperty "peach")
// (getColorProperty "yellow")
// (getColorProperty "green")
// (getColorProperty "teal")
// (getColorProperty "sky")
// (getColorProperty "sapphire")
// (getColorProperty "blue")
// (getColorProperty "lavender")
// (getColorProperty "text")
// (getColorProperty "subtext1")
// (getColorProperty "subtext0")
// (getColorProperty "overlay2")
// (getColorProperty "overlay1")
// (getColorProperty "overlay0")
// (getColorProperty "surface2")
// (getColorProperty "surface1")
// (getColorProperty "surface0")
// (getColorProperty "base")
// (getColorProperty "mantle")
// (getColorProperty "crust")
