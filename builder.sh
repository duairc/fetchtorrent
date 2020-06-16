source "$stdenv"/setup

"$SHELL" "$fetcher" "$url" --name "$name" --out "$out"

runHook postFetch
stopNest
