# Privacy policy

_Last updated: October 28, 2026_

**Vistazo does not collect, sell, share or transmit any personal data.** It has no servers, no
analytics and no telemetry.

This policy covers Vistazo in every browser it is offered for: Microsoft Edge, Google Chrome and other
Chromium-based browsers, and Mozilla Firefox.

## What the extension accesses

- **GitHub pages you visit.** A content script runs on `https://github.com/*` to notice which file or
  folder link you are hovering.
- **The content you ask to preview.** When you rest the pointer on a link, Vistazo requests that file or
  folder from GitHub, directly from your browser:
  - `raw.githubusercontent.com` for file contents (only the first 256 KB unless you ask for more),
  - `github.com` for folder listings and for files in private repositories, using the GitHub session you
    are already signed in with,
  - `api.github.com` only as a fallback for public folder listings.

  Nothing is sent to anyone else. Previews are cached in memory for the current tab and disappear when you
  close or reload it.

## What the extension stores

Only your settings (which previews are enabled, hover delay, display options), saved with
`chrome.storage.sync` so they follow your browser profile. No tokens, credentials, browsing history or
repository content are stored.

## Limited Use

The content Vistazo reads from GitHub (file and folder contents, only for links you hover) is used
solely to show you those previews. It is never transferred to third parties, sold, used for advertising,
or used for any purpose unrelated to that single purpose. The use of information received from websites
complies with the Chrome Web Store User Data Policy, including the Limited Use requirements.

## Permissions

- `storage`: to save your settings.
- Access to `https://github.com/*`: to show previews there.

## Removing your data

Uninstalling the extension deletes its settings. You can also click **Reset to defaults** in the settings.

## Contact

Questions or concerns: open an issue at https://github.com/morningstar-code/vistazo/issues.
