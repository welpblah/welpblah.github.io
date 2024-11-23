<post-metadata>
  <post-title>latex to typst</post-title>
  <post-date>2024-10-09</post-date>
  <post-tags>typesetting, typst, cli</post-tags>
</post-metadata>

The first typsetting system setup I had was writing LaTeX in [TeXShop](https://pages.uoregon.edu/koch/texshop/), an application created and released in the year 2000. I would use [The Comprehensive TeX Archive Network](https://ctan.org/) (CTAN) to look up packages and find answers on the [LaTeX Stack Exchange: TeX](https://tex.stackexchange.com/). And while I remember trying out [Overleaf](https://www.overleaf.com/), an online LaTeX editor, it never stuck.

<aside>See <a href="https://64.media.tumblr.com/37e8491202c818bf98bca9a70c8c84d9/23067bb7060f3bef-af/s1280x1920/8c712e265082b9bf0fe2b8f1c8c910ac00eb3e3b.png">the mascot of LaTeX</a> illustrated by <a href="https://tug.org/interviews/bibby.html">Duane Bibby</a> inside the book <a href="https://archive.org/details/latexdocumentpre0000lamp">LaTeX: A Document Preparation System - User’s Guide and Reference Manual</a>.</aside>

This year, I've migrated over to using the new and shiny [Typst typesetting system](https://typst.app/), created in 2019 and released in 2023. I first used Typst as a browser application but I prefer the simplicity of using it through the Typst <abbr title="command line interface">CLI</abbr>. I installed Typst through the <a href="https://www.macports.org/">MacPorts package manager</a> (the seemingly sensible alternative to Homebrew). 

The setup includes the Visual Studio Code text editor with two extensions: the [Typst Language Server Protocol](https://github.com/nvarner/typst-lsp) for syntax support and [vscode-pdf](https://github.com/tomoki1207/vscode-pdfviewer) to view the rendered <abbr title="Portable Document Format">PDF</abbr> in the text editor itself. And in order to use custom fonts, add the custom font path when compiling:

```javascript
typst compile --font-path path/to/fonts file.typ
```

It seems there is partial support for _hot reloading_. Although, if I want to see the custom fonts, I need to _recompile_ – I wonder if that's the case if I have the custom fonts installed on my system.