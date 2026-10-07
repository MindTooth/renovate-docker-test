# Package PR changelog audit

Checked on 2026-10-07 against the live Dependency Dashboard, all 13 open PR bodies, and the 100 most recently updated closed PRs. Scope: direct dependencies tracked in this repository, excluding transitive lockfile packages.

## Remaining packages

None has an open PR at audit time. Evidence below uses the merged version-update PR for the currently pinned version. A source or comparison link alone is not counted as an embedded changelog.

| Package | Current version | Evidence PR | Changelog shown |
|---|---|---|---|
| passbolt/passbolt | 5.16.0-1-ce | [#376](https://github.com/MindTooth/renovate-docker-test/pull/376) | Embedded changelog; latest digest PR #390 has no release notes. |
| timberio/vector (alpine and debian) | 0.58.0 | [#356](https://github.com/MindTooth/renovate-docker-test/pull/356) | Release Notes section links to the full upstream notes; does not embed the detailed changelog. |
| renovate/renovate (Docker) | 44.137.0 | [#408](https://github.com/MindTooth/renovate-docker-test/pull/408) | Embedded release notes. |
| grafana/grafana | 13.2.3 | [#385](https://github.com/MindTooth/renovate-docker-test/pull/385) | Embedded changelog. |
| pglombardo/pwpush (Compose and Dockerfile) | 2.14.1 | [#386](https://github.com/MindTooth/renovate-docker-test/pull/386) | Embedded release notes. |
| yuzutech/kroki, kroki-mermaid, kroki-bpmn, kroki-excalidraw | 0.32.1 | [#342](https://github.com/MindTooth/renovate-docker-test/pull/342) | Shared embedded Kroki changelog. |
| @commitlint/cli and @commitlint/config-conventional | 21.2.3 | [#375](https://github.com/MindTooth/renovate-docker-test/pull/375) | Separate embedded changelogs for both packages. |
| renovate (npm) | 44.132.2 | [#406](https://github.com/MindTooth/renovate-docker-test/pull/406) | Embedded release notes. |
| black (PyPI) | 26.10.0 | [#398](https://github.com/MindTooth/renovate-docker-test/pull/398) | Embedded changelog. |

The `python_version="3.14"` end-of-life annotation in `Containerfile` is absent from the live dashboard's detected dependencies; no changelog PR could be verified for it. The repository's explicit custom regex manager only matches the root `Dockerfile`, not `Containerfile`. The commented-out Renovate FROM line is not an active dependency.

The dashboard has scheduled updates for Password Pusher, Renovate, Kroki, and Vector, plus lockfile maintenance. Their future PR bodies cannot be verified until the PRs exist. Lockfile maintenance does not show release notes in the latest PR (#407).

## Removed container-tools test images

All 13 added Quay images were removed from `Containerfile`, including the versioned stable images, testing/upstream images, and all-in-one image. At audit time their PRs remain open on GitHub; the local removal must reach the default branch before Renovate can reconcile obsolete updates.

| Image | Open PR | Changelog shown |
|---|---|---|
| quay.io/buildah/stable | [#391](https://github.com/MindTooth/renovate-docker-test/pull/391) | Embedded release notes |
| quay.io/containers/buildah | [#392](https://github.com/MindTooth/renovate-docker-test/pull/392) | Embedded release notes |
| quay.io/containers/podman | [#393](https://github.com/MindTooth/renovate-docker-test/pull/393) | Embedded release notes |
| quay.io/containers/skopeo | [#394](https://github.com/MindTooth/renovate-docker-test/pull/394) | Embedded release notes |
| quay.io/podman/stable | [#395](https://github.com/MindTooth/renovate-docker-test/pull/395) | Embedded release notes |
| quay.io/skopeo/stable | [#396](https://github.com/MindTooth/renovate-docker-test/pull/396) | Embedded release notes |
| quay.io/buildah/testing | [#399](https://github.com/MindTooth/renovate-docker-test/pull/399) | None (digest-only update) |
| quay.io/buildah/upstream | [#400](https://github.com/MindTooth/renovate-docker-test/pull/400) | None (digest-only update) |
| quay.io/containers/aio | [#401](https://github.com/MindTooth/renovate-docker-test/pull/401) | None (digest-only update) |
| quay.io/podman/testing | [#402](https://github.com/MindTooth/renovate-docker-test/pull/402) | None (digest-only update) |
| quay.io/podman/upstream | [#403](https://github.com/MindTooth/renovate-docker-test/pull/403) | None (digest-only update) |
| quay.io/skopeo/testing | [#404](https://github.com/MindTooth/renovate-docker-test/pull/404) | None (digest-only update) |
| quay.io/skopeo/upstream | [#405](https://github.com/MindTooth/renovate-docker-test/pull/405) | None (digest-only update) |
