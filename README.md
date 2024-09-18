# Lite XL IDE

![Lite XL IDE with Debugger Open](https://raw.githubusercontent.com/lite-xl/lite-xl-ide/main/screenshots/debugger.png)

[`Lite XL`](https://github.com/lite-xl/lite-xl) is a light-weight extensible text editor.

`lite-xl-ide` aims to be a suite of plugins for `Lite XL` that can turn it into a valid IDE for a wide variety of programming languages with minimal fuss.

Please note, `lite-xl-ide` is still **experimental**; it is not ready for release. Use at your own risk.

## Table of Contents

1. [Quickstart](#quickstart)
2. [Plugins](#plugins)
3. [IDE Support Status](#ide-support-status)
  1. [Language Support](#language-support)
  2. [IDE Bundle Support](#ide-bundle-support)

## Quickstart

<!-- TODO: add link to IDE setup guide on Takase's new website -->

To install, you can use [`lpm`](https://github.com/lite-xl/lite-xl-plugin-manager):

```bash
lpm install ide --no-install-optional
```

If you want to just try it out, you can always use `run` to try it in a new lite bottle:

```bash
lpm run https://github.com/lite-xl/lite-xl-ide.git:main ide --no-install-optional
```

Alternatively, if you don't have `lpm`, or don't want it, you can always pull the repository manually with `git`
and simply copy the entire set of plugins into lite's plugin directory:

```bash
git clone https://github.com/lite-xl/lite-xl-ide.git && cp -R lite-xl-ide/plugins ~/.config/lite-xl-/plugins
```

## Plugins

### Build

The build plugin is a flexible build system. It can be configured to either use `make`, or, it can take over entirely
and run all the compile commands directly.

* Support for `make`.
* Support for internal building if configured with an appropriate compiler frontend. (`gcc` or `clang`).
* Support for executing binary in an external terminal.

#### TODO

* Persist settings to disk for current target, and binary arguments.
* Present recent list of targets/arguments as suggestions.

### Debugger

The debugger plugin acts as a front-end to `gdb`.

* Allows placing of breakpoints by clicking in the gutter.
* Allows all normal debugging control operations: step, step over, step up, continue, break, quit.
* Allows watching variables by hovering over the appropriate symbol during debugging.
* Allows traversing the callstack when stopped.
* Allow to run debugged program with shell-like argument list.
* Allows watching variables by adding them to a watchlist.
* Allow clicking on the debugger status to change it (running -> break, inactive -> start, stopped -> continue).
* Allows binding the debugger plugin to `terminal`, allowing it to automatically parse and emit input to the debugger in a particular terminal.

#### TODO

* Allows adding hovered watched to watchlist with right click context menu.

### LSP

Full support for LSP through @jgmdev's [wonderful plugin](https://github.com/lite-xl/lite-xl-lsp), included in this manifest.

#### TODO

* Bundle a statically compiled ccls with LSP, and configure it through the ide plugin.

### Git

Full support for git, again through @jgmdev's [VCS plugin](https://github.com/lite-xl/lite-xl-plugins).

* Bundle a statically compiled git for vcs.

## IDE Support Status

### Features

- [x] Syntax highlighting for 100+ languages
- [x] Intellisense support for 50+ languages (WIP)
- [x] Custom project treeview devicons
- [x] VSCode-like minimap
- [x] Project-wide text string search
- [x] Project-wide filename search
- [x] Multi-cursor editing
- [x] Single/multi-line commenting with shortcuts
- [x] Go to line n command
- [x] Todo treeview
- [x] Code block definition preview on hover (like for TailwindCSS in VSCode)
- [x] Integrated terminal
- [x] Git integration (WIP)
- [x] Builder integration (WIP)
- [x] Debugger integration (WIP)
- [x] Markdown support via [ghmarkdown](https://github.com/lite-xl/lite-xl-plugins/blob/master/plugins/ghmarkdown.lua) or [mdpreview](https://github.com/Not-a-web-Developer/lite-xl-mdpreview)

#### WIP
- [ ] Foldable code blocks
- [ ] Horizontal scrolling for project treeview
- [ ] Ligatures support
- [ ] Github Copilot integration
- [ ] Custom Canvas API to allow an external renderer to draw on a surface that Lite XL will render on screen

#### TODO
- [ ] Document symbols treeview
- [ ] Support goto-definition/implementation for external libraries (es. java, minecraft mods)
- [ ] External libraries item in project treeview
- [ ] Simultaneous tag rename
- [ ] Project-wide refactoring
- [ ] Project template manager

### Development Boards

- [Intellisense](https://github.com/users/PerilousBooklet/projects/6/views/1)
- [Utilities](https://github.com/users/PerilousBooklet/projects/7/views/1)
- [Build Integration](https://github.com/users/PerilousBooklet/projects/8/views/1)
- [Debug Integration](https://github.com/users/PerilousBooklet/projects/9/views/1)
- [Profiling Integration](https://github.com/users/PerilousBooklet/projects/10/views/1)

### Language Support

<!-- check: <span>&#9989;</span> or 1004 -->
<!-- x: <span>&#x274c;</span> or 1008 -->

| Language | Syntax High. | LSP support | Linting | Snippets | Formatter | Builder | Debugger |
|------------------|:--------------:|:-------------:|:---------:|:----------:|:----------:|:-----------:|:---------:|
| Arduino | <span>&#9989;</span> |  |  |  |  |  |  |
| Bash | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> ex | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| C# | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| C/C++ | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |<span>&#9989;</span>|
| Clojure | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> |  |  |
| Cobol |  |  |  |  |  |  |  |
| Crystal | <span>&#9989;</span> | <span>&#9989;</span> \* |  |  | <span>&#9989;</span> |  |  |
| CSS | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| D | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> |  |  |
| Dart | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> |  |  |
| Elixir | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Elm | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> |  |  |
| Erlang | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/424) | <span>&#9989;</span> | <span>&#9989;</span> \* | <span>&#9989;</span> |  |  |  |
| F# | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/423) |  |  |  |  |  |  |
| Fortran | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |  |  |
| GDScript | <span>&#9989;</span> |  |  |  | <span>&#9989;</span> |  |  |
| Go | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Groovy | <span>&#9989;</span> | <span>&#9989;</span> \* | <span>&#9989;</span> |  |  |  |  |
| Haskell | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| HTML | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Java | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Javascript | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| JSON | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |<span>&#x274c;</span>|  |  |  |
| Julia | <span>&#9989;</span> | <span>&#9989;</span> \* |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Kotlin | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| Lisp |  |  |  |  |  |  |  |
| Lua | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> ex | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Nim | <span>&#9989;</span> | <span>&#9989;</span> \* | <span>&#9989;</span> \* |  |  |  |  |
| Nix | <span>&#9989;</span> |  |  | <span>&#9989;</span> |  |  |  |
| Ocaml | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/429) |  |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Odin | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |  |
| OpenSCAD | <span>&#9989;</span> |  |  |  |  |  |  |
| Perl | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> |  |  |  |
| PHP | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> ex | <span>&#9989;</span> |  |  |  |
| Python | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| R | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| Ruby | <span>&#9989;</span> | <span>&#9989;</span> \* |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Rust | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Scala | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| SQL | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Svelte | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/473) |  |  | <span>&#9989;</span> |  |  |  |
| System Verilog |  |  |  |  |  |  |  |
| Tailwind | <span>&#9989;</span> | <span>&#9989;</span> \* | <span>&#x274c;</span> |<span>&#x274c;</span>| <span>&#x274c;</span> |  |  |
| TeX | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| TOML | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#x274c;</span> | <span>&#9989;</span> |  |  |
| Typescript | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |  |  |
| Typst | <span>&#9989;</span> | <span>&#9989;</span> \* | <span>&#9989;</span> |  |  |  |  |
| V | <span>&#9989;</span> | <span>&#9989;</span> |  |  | <span>&#9989;</span> |  |  |
| Vala | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/432) | <span>&#9989;</span> \* | <span>&#9989;</span> |  |  |  |  |
| Zig | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> ex |  | <span>&#9989;</span> |  |  |
| XML | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#x274c;</span> |  |  |  |
| YAML | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#x274c;</span> | <span>&#9989;</span> |  |  |

`*`: there are still some problems to solve

`ex`: external linter

#### IDE Bundle Support

| Language         | LSP Bundle | LSP Bundle Package | IDE Package |
|------------------|:--------------:|:-------------:|:-------------:|
| Arduino |  |  |  |
| Bash |  |  |  |
| C# |  |  |  |
| C/C++ | <span>&#9989;</span> | `lsp_c` | `ide_c` |
| Clojure |   |  |  |
| Crystal |  |  |  |
| CSS |  |  |  |
| Dart |  |  |  |
| Elixir |  |  |  |
| ELM |  |  |  |
| Erlang |  |  |  |
| Go |  |  |  |
| Groovy |  |  |  |
| Haskell |  |  |  |
| HTML |  |  |  |
| Java | <span>&#9989;</span> | `lsp_java` | `ide_java` |
| Javascript | <span>&#9989;</span> | `lsp_typescript` | `ide_javascript` |
| JSON | <span>&#9989;</span> | `lsp_json` |  |
| Julia |  |  |  |
| Kotlin |  |  |  |
| Lisp |  |  |  |
| Lua | <span>&#9989;</span> | `lsp_lua` | `ide_lua` |
| Nim |  |  |  |
| Nix |  |  |  |
| Ocaml |  |  |  |
| Odin |  |  |  |
| OpenSCAD |  |  |  |
| Perl |  |  |  |
| PHP |  |  |  |
| Python | <span>&#9989;</span> | `lsp_python` | `ide_python` |
| R |  |  |  |
| Ruby |  |  |  |
| Rust | <span>&#9989;</span> | `lsp_rust` | `ide_rust` |
| Scala |  |  |  |
| SQL |  |  |  |
| Svelte |  |  |  |
| Tailwind |  |  |  |
| TeX | <span>&#9989;</span> | `lsp_tex` | `ide_tex` |
| Typescript | <span>&#9989;</span> | `lsp_typescript` |  |
| Typst |  |  |  |
| XML |  |  |  |
| YAML | <span>&#9989;</span> | `lsp_yaml` |  |
| Zig | <span>&#9989;</span> | `lsp_zig` | `ide_zig` |
