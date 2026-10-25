# Blackbox Exporter fixture for Renovate version, digest, and changelog tests.
FROM quay.io/prometheus/blackbox-exporter:v0.29.0@sha256:9613f2884689b6fad9f1939f6a3b0388c93a022cfaededb19545b329b5c83dea

# Missing source metadata: Renovate cannot discover the ORAS changelog.
FROM ghcr.io/oras-project/oras:v1.3.5@sha256:2f43a2bd4797df77ab38cf24ec92ae34a98a82cdf4ec507537e44081c603630e AS oras

# Comparison: source metadata lets Renovate retrieve uv release notes.
FROM ghcr.io/astral-sh/uv:0.13.4@sha256:9f130421e930bfbdc563c00740466603f8723158e90297d07957c2294640262b AS uv
