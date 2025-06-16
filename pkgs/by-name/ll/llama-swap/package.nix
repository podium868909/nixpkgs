{
  lib,
  buildGoModule,
  fetchFromGitHub,
  ...
}:
buildGoModule rec {
  pname = "llama-swap";
  version = "125";

  src = fetchFromGitHub {
    owner = "mostlygeek";
    repo = "llama-swap";
    rev = "v${version}";
    hash = "sha256-mFmrHTexcVYMu58dvrTYB6wtDQOo5ZoiJL2jt29xJ0s=";
  };

  subPackages = [ "." ];

  vendorHash = "sha256-5mmciFAGe8ZEIQvXejhYN+ocJL3wOVwevIieDuokhGU=";

  meta = {
    description = "llama-swap is a light weight, transparent proxy server that provides automatic model swapping to llama.cpp's server.";
    homepage = "https://github.com/mostlygeek/llama-swap";
    mainProgram = "llama-swap";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ podium868909 ];
  };
}
