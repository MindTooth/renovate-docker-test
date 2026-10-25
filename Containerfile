# Blackbox Exporter fixture for Renovate version, digest, and changelog tests.
FROM quay.io/prometheus/blackbox-exporter:v0.29.1@sha256:ea1c7aa3ef3f307cd03e85f34abb604478ccb90b567fc690da0cd9776da76b13

# Missing source metadata: Renovate cannot discover the ORAS changelog.
FROM ghcr.io/oras-project/oras:v1.3.5 AS oras

# Comparison: source metadata lets Renovate retrieve uv release notes.
FROM ghcr.io/astral-sh/uv:0.13.4 AS uv
