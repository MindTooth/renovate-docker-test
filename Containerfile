# Blackbox Exporter fixture for Renovate version, digest, and changelog tests.
FROM quay.io/prometheus/blackbox-exporter:v0.29.0@sha256:9613f2884689b6fad9f1939f6a3b0388c93a022cfaededb19545b329b5c83dea

# Missing source metadata: Renovate cannot discover the ORAS changelog.
FROM ghcr.io/oras-project/oras:v1.3.6@sha256:9cfb578be975b762fd898b9d004243d8003aeb807a3e15b2ed212cdd1326c9eb AS oras

# Comparison: source metadata lets Renovate retrieve uv release notes.
FROM ghcr.io/astral-sh/uv:0.13.4 AS uv
