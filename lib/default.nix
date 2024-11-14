{
  /**
    Convert an attribute to `rgb()` notation.

    # Type

    ```
    toRGBNotation :: { r, g, b } -> string
    ```
  */
  toRGBNotation = x:
    let
      r = toString x.r;
      g = toString x.g;
      b = toString x.b;
    in "rgb(${r}, ${g}, ${b})";

    
  /**
    Convert an attribute to `hsl()` notation.

    # Type

    ```
    toHSLNotation :: { h, s, l } -> string
    ```
  */
  toHSLNotation = x:
    let
      h = toString x.h;
      s = toString (x.s * 100);
      l = toString (x.l * 100);
    in "hsl(${h} ${s}% ${l}%)";
}
