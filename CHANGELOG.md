# Changelog

All notable changes to this project are documented here. The format follows
[Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and the project uses
[Semantic Versioning](https://semver.org/).

## [1.0.2] - 2026-10-28

### Changed

- Vistazo is now free to use but no longer open source: see the new [LICENSE](LICENSE). Downloads,
  documentation and issues stay on this page.
- The settings page links to this page ("Website") instead of the source code.

### Added

- An [`examples`](examples) folder to try every kind of preview right after installing.

## [1.0.1] - 2026-10-28

### Fixed

- Previews closed by themselves, or never opened, when content loaded above the link while it was
  hovered: the browser keeps the page steady by adjusting the scroll (scroll anchoring), and any scroll
  used to close previews. Now a preview only closes when its link really moves on screen.
- A preview no longer flickers (closes and reopens) when GitHub re-renders the file list under a pointer
  that hasn't moved, for example when commit details finish loading.
- Previews closed whenever the browser window lost focus, even for an instant (an embedded frame taking
  focus, another window popping up). Now they close when the tab is actually hidden.

### Added

- Store listing kit in `docs/store/`: descriptions in English and Spanish, privacy answers, permission
  justifications, certification notes, a 300×300 logo and 1280×800 screenshots.
- End-to-end test: runs in Microsoft Edge too (`CHROME_PATH`), prints the browser version, configurable
  viewport and screenshot set, and checks that previews survive GitHub re-rendering a row and the page
  re-adjusting its scroll.
- Privacy policy: explicit Limited Use statement and the list of browsers it covers.
- Debug mode: run `localStorage.vistazoDebug = '1'` on github.com to log why each preview opens and
  closes (the end-to-end test turns it on and prints the log when a check fails).

## [1.0.0] - 2026-10-28

First release.

### Added

- Hover previews for files, folders, images, video and audio on github.com.
- Nested previews: hover entries inside a folder preview to go deeper.
- Syntax highlighting for 45+ languages using GitHub's own theme colors.
- Rendered Markdown (tables, task lists, alerts, images), CSV tables and formatted JSON, each with a
  toggle back to the source.
- Line permalinks (`#L10-L20`) scroll to and highlight the referenced lines.
- Pin, drag and resize previews; copy contents or path; open the raw file; <kbd>Esc</kbd> to close.
- Filter box for large folders, with keyboard navigation.
- Works without a token or sign-in, including private repositories through the existing GitHub session.
- Range requests (first 256 KB), an LRU cache bounded by size, and request de-duplication.
- Light, dark, dimmed and high-contrast themes follow GitHub automatically.
- Settings page: preview types, hover delay, modifier key, rendering, line numbers, wrapping, page size.
- English and Spanish translations.
- Unit tests, an end-to-end test in headless Chrome, CI and a release workflow.

[1.0.2]: https://github.com/morningstar-code/vistazo/releases/tag/v1.0.2
