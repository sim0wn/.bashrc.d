alias pandoc='podman run --rm -v "$(pwd):/data:z" pandoc/latex'

# Security Tools
alias rustscan='podman run --cap-add=NET_ADMIN --cap-add=NET_RAW --cap-add=NET_BIND_SERVICE -v "$(pwd):/data:z" -it --rm --name rustscan rustscan/rustscan:latest'
