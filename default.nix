{ stdenvNoCC, aria2
}:
{ url, sha256 ? "", name ? "torrent", postFetch ? "", preferLocalBuild ? true
}:

stdenvNoCC.mkDerivation {
  inherit name;
  builder = ./builder.sh;
  fetcher = ./nix-prefetch-torrent;
  nativeBuildInputs = [aria2];

  outputHashAlgo = "sha256";
  outputHashMode = "recursive";
  outputHash = sha256;

  inherit url postFetch;

  inherit preferLocalBuild;
}
