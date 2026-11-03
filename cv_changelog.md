# CV Changelog

Running log of updates to `akanksha_cv.tex`.

## 2026-11-03

- **Contact header**: Identifies the PhD in Computational Biology as the joint Carnegie Mellon-University of Pittsburgh program with the Pitt academic email. Removed the Aging Institute and Department of Immunology affiliations from Contact as requested.
- **Research focus**: Tagline set to "Machine Learning for Epigenetic reprogramming", using Akanksha's requested wording and capitalization.
- **Awards**: Shortened the MCM scholarship entry to end at "by IIT Bombay", removing the duration and financial-hardship wording.
- **Hackathon award**: Uses bold "1st Place, Accessibility Track" followed by "Pitt Challenge Hackathon | team of 3", per Akanksha's requested wording.
- **NeurIPS award**: Added a vertical separator after "Student A100 track".
- **Education**: Retains separate Pitt School of Medicine (2024-present; expected completion 2027) and CMU (2022-2024) entries, as requested. The CMU entry begins with bold "CMU, Kenneth C. Griffin School of Computer Science" and places "Computational Biology Department" beside the GPA. The contact header identifies the PhD as the joint CMU-Pitt program.
- **Leadership**: Clarified ASPG President (June 2026-present) and prior Vice President (July 2025-June 2026); updated the advocacy description to AI safety and biosecurity.
- **Sources**: [LinkedIn education](https://www.linkedin.com/in/akanksha-sachan/details/education/) and [profile/experience](https://www.linkedin.com/in/akanksha-sachan/), reviewed November 3, 2026. The joint-program interpretation follows Akanksha's explicit clarification; the separate LinkedIn entries do not represent separate PhDs.

## 2026-10-21

- **Contact header**: Tagline changed from "Machine learning for Genomics & Epigenetics" to "Machine learning for Epigenetics".
- **Education**: UPitt PhD advisor line now lists Dr. Jishnu Das only.
- **Invited Talks**: FOCAL talk retitled to "Interpretable machine learning coupled to gene regulatory networks uncovers subcircuits underlying cell fate decisions", now linked to the bioRxiv preprint (was "paper-in-prep").
- **Invited Talks**: Aging talk retitled to "Sex-dimorphic DNA lesion accumulation drives a PDK4 metabolic checkpoint in skeletal muscle"; status now "in-review at Nature Aging" (was "submitted to Nature Aging").

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
