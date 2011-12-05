module ApplicationHelper
  def render_ascii_logo_c
    <<-logo
|   .,-:::::
| ,;;;'````'
| [[[       
| $$$       
| `88bo,__,o,"
|   "YUMMMMMP"
    logo
  end

  def render_ascii_logo_rest
    <<-logo
:::::::-.  .,::::::  .,-:::::/      ...     :::::::.   :::     ::::::.    :::. |
 ;;,   `';,;;;;'''',;;-'````'    .;;;;;;;.   ;;;'';;'  ;;;     ;;;`;;;;,  `;;; |
 `[[     [[ [[cccc [[[   [[[[[[/,[[      \[[, [[[__[[\.  [[[     [[[  [[[[[. '[[ |
  $$,    $$ $$"""" "$$c.    "$$ $$$,     $$$ $$""""Y$$ $$'     $$$  $$$ "Y$c$$ |
  888_,o8P' 888oo,__`Y8bo,,,o88o"888,_ _,88P_88o,,od8Po88oo,.__888  888    Y88 |
  MMMMP"`   """"YUMMM `'YMUP"YMM  "YMMMMMP" ""YUMMMP" """"YUMMMMMM  MMM     YM |
    logo
  end
end
