<post-metadata>
  <post-title>latex -> typst</post-title>
  <post-date>2024-10-09</post-date>
  <post-tags>typesetting</post-tags>
</post-metadata>

The first typsetting system setup I had was writing LaTeX in [TeXShop](https://pages.uoregon.edu/koch/texshop/), an application created and released in the year 2000. I would use [The Comprehensive TeX Archive Network](https://ctan.org/) (CTAN) to look up packages and find answers on the [LaTeX Stack Exchange: TeX](https://tex.stackexchange.com/). And while I remember trying out [Overleaf](https://www.overleaf.com/), an online LaTeX editor, it never stuck.

<figure>
	<img src="/assets/images/duane-bibby-latex-illustration.png" alt="The mascot of LaTeX created by Duane Bibby">
	<figcaption>The mascot of LaTeX created by <a href="https://tug.org/interviews/bibby.html">Duane Bibby</a> from Leslie Lamport's book <a href="https://archive.org/details/latexdocumentpre0000lamp">LaTeX: A Document Preparation System - User’s Guide and Reference Manual</a>.</figcaption>
</figure>

This year, I've migrated over to using the new and shiny [Typst typesetting system](https://typst.app/), created in 2019 and released in 2023. I first used Typst as a browser application but I prefer the simplicity of using it through the Typst <abbr title="command line interface">CLI</abbr>. I installed Typst through the <a href="https://www.macports.org/">MacPorts package mananger</a> (the seemingly sensible alternative to Homebrew). The setup includes the Visual Studio Code text editor with two extensions: the [Typst Language Server Protocol](https://github.com/nvarner/typst-lsp) for syntax support and [vscode-pdf](https://github.com/tomoki1207/vscode-pdfviewer) to view the rendered <abbr title="Portable Document Format">PDF</abbr> right inside the text editor.

<figure>
	<img src="/assets/images/typst-setup.png" alt="An example Typst setup in the Visual Studio Code text editor">
	<figcaption>An example Typst setup in the Visual Studio Code text editor.</figcaption>
</figure>

As the screenshot illustrates, in order to use custom fonts, you have to add the custom font path when compiling:

```bash
typst compile --font-path path/to/fonts file.typ
```

It seems there is partial support for _hot reloading_. Although, if I want to see the custom fonts, I need to _recompile_ – I wonder if that's the case if I have the custom fonts installed on my system.