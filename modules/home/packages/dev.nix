{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## C / C++
    gcc

    ## Python
    python3
    python312Packages.ipython
  ];
}
