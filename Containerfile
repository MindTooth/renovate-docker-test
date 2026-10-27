# Blackbox Exporter fixture for Renovate version, digest, and changelog tests.
FROM quay.io/prometheus/blackbox-exporter:v0.29.0@sha256:9613f2884689b6fad9f1939f6a3b0388c93a022cfaededb19545b329b5c83dea

# Missing source metadata: Renovate cannot discover the ORAS changelog.
FROM ghcr.io/oras-project/oras:v1.3.5 AS oras

# Comparison: source metadata lets Renovate retrieve uv release notes.
FROM ghcr.io/astral-sh/uv:0.13.6@sha256:af22a52f5eafef3d78e551599d405c02df61919d18028f0cea8eda93bc9986d0 AS uv
