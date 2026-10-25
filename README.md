# renovate-docker-test

Just my repo for testing out Renovate.

## Docker changelog discovery

`Containerfile` contains independent dependency fixtures; it is not an application
image. Keep the ORAS and uv tags behind their next releases to exercise version
updates, rather than digest-only updates (which do not demonstrate changelogs).

| Image | Test update | Observed with Renovate 44.181.0 on 2026-10-25 |
| --- | --- | --- |
| `ghcr.io/oras-project/oras` | `v1.3.5` → `v1.3.6` | No discovered `sourceUrl`; changelog lookup returns `null`. |
| `ghcr.io/astral-sh/uv` | `0.13.4` → `0.13.5` | Discovers `https://github.com/astral-sh/uv`; retrieves nonempty changelog text for `0.13.5`. |

No `sourceUrl` override is configured: that would hide the ORAS discovery failure.
The existing Blackbox Exporter fixture and Renovate configuration are unchanged.
The shared preset enables digest pinning, so pinning updates may also appear.

### Reproduce extraction and update lookup

With Renovate 44.181.0 installed, run from this repository:

```sh
renovate-config-validator --no-global .github/renovate.json
LOG_LEVEL=debug renovate --platform=local --dry-run=full \
  --onboarding=false --require-config=required --schedule= --print-config=true
```

Provide a GitHub token through `GITHUB_COM_TOKEN` for GitHub preset resolution
and release-note retrieval. Do not commit it. `--schedule=` bypasses the inherited
early-Monday schedule for this local check only.

Inspect the `packageFiles with updates` log entry: ORAS should offer `v1.3.6`
without a `sourceUrl`, while uv should offer `0.13.5` with its GitHub `sourceUrl`.
Local mode checks extraction and lookup; it does **not** prove PR-body rendering.
For a hosted run, inspect the **version-update** PRs after the configured schedule
permits them: ORAS should lack release notes, while uv should contain them.
A missing GitHub token or failed lookup is not evidence of missing image metadata.

### Tested versus untested

Tested against live registries with Renovate 44.181.0:

- Repository configuration validation passed. The installed RE2 native module
  was unavailable; validation and the local run used the RegExp fallback.
- The local dry run resolved the shared preset, extracted all three fixtures,
  and proposed both version updates above; their image manifests resolved.
- Separate calls to Renovate's Docker datasource found empty labels for ORAS
  `latest`, `v1.3.5`, and `v1.3.6`. Source discovery returned no `sourceUrl`.
- Separate calls to Renovate's own `getChangeLogJSON`, using discovered source
  URLs and a GitHub token, returned `null` for ORAS and 3,576 characters of actual
  uv `0.13.5` changelog text from
  [CHANGELOG.md](https://github.com/astral-sh/uv/blob/HEAD/CHANGELOG.md#0135).
- Vector was investigated as a comparison: numbered Alpine tags have source
  labels, but its advertised `latest` tag returned 404 on Docker Hub and GHCR.
  Renovate's source lookup uses `latest` when listed, so uv was used instead.

Not tested: hosted Renovate execution, actual PR bodies, container builds or
execution, or every platform's metadata. Registry tags, shared presets, and
changelog content can change; these observations are dated, not permanent guarantees.
