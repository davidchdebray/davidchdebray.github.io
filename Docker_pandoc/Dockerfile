# -------------------------------------------------
# 1️⃣ Base image
# -------------------------------------------------

# LTS Ubuntu – stable and widely used
FROM ubuntu:22.04   

# -------------------------------------------------
# 2️⃣ Set non‑interactive mode (prevents apt prompts)
# -------------------------------------------------
ENV DEBIAN_FRONTEND=noninteractive

# -------------------------------------------------
# 3️⃣ Update apt cache and install the two packages
# -------------------------------------------------
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    pandoc \
    texlive-full && \
    # Clean up apt caches to keep the layer size as small as possible
    rm -rf /var/lib/apt/lists/*

# -------------------------------------------------
# 4️⃣ Verify the installations (optional, helpful for debugging)
# -------------------------------------------------
RUN pandoc --version && \
    texlua --version && \
    tlmgr --version

# -------------------------------------------------
# 5️⃣ Use a non‑root user (best practice for CI)
# -------------------------------------------------
RUN useradd -m -s /bin/bash runner
USER runner
WORKDIR /home/runner

# -------------------------------------------------
# 6️⃣ Default entrypoint – just a shell (the CI runner will invoke pandoc directly)
# -------------------------------------------------
ENTRYPOINT ["/bin/bash"]