FROM ghcr.io/anomalyco/opencode:latest
LABEL maintainer="sinfallas@gmail.com"
LABEL build_date="2026-6-1"

RUN apk add libgcc libstdc++ libucontext ripgrep gcompat libc6-compat
ENV LD_PRELOAD=/usr/lib/libucontext.so.1
RUN opencode --version
ENTRYPOINT ["opencode"]
