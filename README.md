# A collection of fortunes.

The fortunes were cleaned, word wrapped, and the author was formatted nicely

Tested working with [rs-fortune](https://github.com/zuisong/rs-fortune)

## Installation

Each fortune file is plain text with `%` on its own line as a delimiter.
`.dat` index files are intentionally not committed: the on-disk format differs
between `fortune` (ibiblio/BSD lineage, shipped by Homebrew) and `fortune-mod`
(shlomif fork, shipped by Ubuntu and Fedora), so they must be regenerated
locally with the `strfile` that matches your `fortune` binary.

### rs-fortune (any platform — no `.dat` needed)

[rs-fortune](https://github.com/zuisong/rs-fortune) reads these files directly:

    cargo install --git https://github.com/zuisong/rs-fortune
    FORTUNE_FILE=taoup rs-fortune

### macOS (Homebrew)

    brew install fortune
    cd <this-directory>
    find . -maxdepth 1 -type f ! -name '*.*' -exec strfile -- {} \;

### Ubuntu / Debian

    sudo apt install fortune-mod
    cd <this-directory>
    find . -maxdepth 1 -type f ! -name '*.*' -exec /usr/games/strfile -- {} \;

### Fedora

    sudo dnf install fortune-mod
    cd <this-directory>
    find . -maxdepth 1 -type f ! -name '*.*' -exec strfile -- {} \;

## Sources:

- [Discordian quotes](discordian)
  - collected by [JKirchartz](https://github.com/JKirchartz/fortunes/blob/master/memebomb)
  - Unlicense
  - from [Discordian memebombs](http://principiadiscordia.com/memebombs/)
  - and [krmaxwell's "Discordian Quote Sample"](https://gist.github.com/krmaxwell/7131789)
  - and [KBuxton's Discordian Quotes](https://kbuxton.com/discordia/discordianquotes.html)
- [Epigrams on Programming](epigrams_on_programming)
  - collected by [JKirchartz](https://github.com/JKirchartz/fortunes/blob/master/epigrams_in_programming)
  - Unlicense
  - from [excerpts](http://www.cs.yale.edu/homes/perlis-alan/quotes.html)
  - published by [Perlis, A. J. (1982b). Special Feature: Epigrams on programming. ACM SIGPLAN Notices, 17(9), 7–13](https://doi.org/10.1145/947955.1083808)
  - [full pdf](https://gwern.net/doc/cs/algorithm/1982-perlis.pdf)
- [Firefly quotes](firefly)
  - collected by [AndrewReitz](https://github.com/AndrewReitz/fortune-firefly)
  - Copyrighted by Fox Broadcasting Corporation and Universal Pictures
- [Fragments of Heraclitus](fragments_of_heraclitus)
  - collected by [JKirchartz](https://github.com/JKirchartz/fortunes/blob/master/HeraclitusFragments)
  - Unlicense
  - from [Roberto's Collection](https://github.com/r03ert0/Heraclitus-Fragments)
- [Math quotes](math)
  - collected by [maxieds](https://github.com/maxieds/math-fortune-mod)
  - Copyright unknown
  - from https://www.math.utah.edu/~cherk/mathjokes.html
  - and http://www.sonoma.edu/Math/faculty/falbo/jokes.html
- [Motivational quotes](motivate)
  - collected by [mubaris](https://github.com/mubaris/motivate)
  - MIT license
- [Oblique Strategies cards](oblique_strategies)
  - collected by [JKirchartz](https://github.com/JKirchartz/fortunes/blob/master/ObliqueStrategies)
  - Unlicense
  - from Brian Eno's [Oblique Strategies cards](https://en.wikipedia.org/wiki/Oblique_Strategies)
- [The Art of Unix Programming](taoup)
  - collected by [globalcitizen](https://github.com/globalcitizen/taoup)
  - GPL-3.0 license
