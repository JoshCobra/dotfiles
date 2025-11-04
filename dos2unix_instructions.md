# dos2unix Usage Guide

## Overview
`dos2unix` is a tool that converts text files from DOS/Windows line endings (CRLF: `\r\n`) to Unix line endings (LF: `\n`).

## Installation
On macOS, install via Homebrew:
```bash
brew install dos2unix
```

## Basic Usage

### Convert a single file
```bash
dos2unix filename.txt
```
This modifies the file in place, converting all DOS line endings to Unix line endings.

### Convert multiple files
```bash
dos2unix file1.txt file2.txt file3.txt
```

### Convert all files in a directory
```bash
dos2unix -r /path/to/directory
```
The `-r` flag enables recursive conversion of all files in the directory and subdirectories.

### Preview changes without modifying
```bash
dos2unix -i filename.txt
```
The `-i` flag shows what would be changed without actually modifying the file (info mode).

## Common Options

| Option | Description |
|--------|-------------|
| `-r` | Recursively convert files in directories |
| `-i` | Info mode - show line endings without converting |
| `-V` or `--version` | Display version information |
| `-h` or `--help` | Show help message |
| `-k` | Keep file modification date |
| `-n` | Create a new file with converted content (keeps original) |

## Examples

### Convert a file and keep the original
```bash
dos2unix -n original.txt converted.txt
```

### Convert all `.txt` files in current directory
```bash
dos2unix *.txt
```

### Convert all files recursively in a project
```bash
dos2unix -r ./my-project
```

### Check file line endings (without converting)
```bash
dos2unix -i script.sh
```

## Reverse Operation (Unix to DOS)
Use `unix2dos` to convert Unix line endings back to DOS:
```bash
unix2dos filename.txt
```

## Why Use dos2unix?
- Fixes line ending issues when working across Windows and Unix systems
- Prevents merge conflicts caused by line ending differences
- Resolves issues with shell scripts and text files edited on Windows
