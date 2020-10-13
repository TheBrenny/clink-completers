# clink-completers

An epic repo filled with simple completers for the super useful [clink](https://github.com/chrisant996/clink) by mridgers and chrisant996!

This is a community repo, so send a PR with your completions!

## Installation

```console
> git clone https://github.com/TheBrenny/clink-completers
> cd clink-completers
> .link.bat
```

You'll need to run `.link.bat` to link new completions, though!

You can create a scheduled task if you want though,
```console
> schtasks /Create /TN "Clink Linker" /TR "%cd%\.link.bat" /SC MONTHLY /D 1
```

## Completions:
- [git](./git.lua)
- [NPM](./npm.lua)

