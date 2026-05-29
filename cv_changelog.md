# CV Changelog

Running log of updates to `akanksha_cv.tex`.

## 2026-05-29

- **Setup**: Reconstructed `akanksha_cv.tex` (moderncv banking, purple) from `CV_Apr_2026.pdf` — the original `.tex` source was lost, so this file is the new source of truth.
- **Repo**: Created private GitHub repo `sachha-naksha/naksha-cv`; tracking all files (tex, compiled pdf, changelog). MacTeX installed locally for compilation.
- **Sections reproduced** (in original CV order): Research Interests, Education, Awards and Scholarships, Invited Talks and Posters, Athletic Accolades, Leadership & Societal Contributions, Consortiums & Workshops, Research Experience Prior to Thesis, Key Coursework.
- **Known deviations from original PDF**:
  - Hyperlinks could not be recovered from the PDF text (URLs unknown). Only the email (`mailto:`) and Github (`https://github.com/sachha-naksha`) links are wired in. All other former links render as plain text — see the "HYPERLINKS TO RESTORE" backlog block at the top of the `.tex`. Send URLs to wire them in.
  - Preamble was rebuilt from scratch (original lost); layout is close but not pixel-identical.
  - Kept the existing CV's own date style (`'YY`) and abbreviations (CMU, SCS, UPitt) for faithful reproduction; future *new* entries will follow the cv-update skill conventions.
- **Backlog**: All current talks/posters marked resolved ✓ in the top-of-file backlog block.
- **Compiler**: MacTeX's `.pkg` needed sudo and couldn't be installed non-interactively, so TinyTeX (user-space TeX Live) was installed instead. Required packages pulled via `tlmgr`: moderncv, pgf/tikz, fontawesome5, lmodern, cm-super, enumitem, fancyhdr, lastpage, multirow, arydshln.
- **TeX fixes for compilation**: defined legacy `\sl` (moderncv omits it), loaded `lmodern` (microtype font-expansion needs scalable fonts), and built the header with `\shortstack` so name / subtitle / links stack like the original.

### Build command

```sh
export PATH="$PATH:$HOME/Library/TinyTeX/bin/universal-darwin"
cd ~/naksha-cv
pdflatex -interaction=nonstopmode -halt-on-error akanksha_cv.tex   # pass 1
pdflatex -interaction=nonstopmode -halt-on-error akanksha_cv.tex   # pass 2 (for "Page X of Y")
```
