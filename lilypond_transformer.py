#!/usr/bin/python

from functools import partialmethod
import os
import glob
import re
import typer

app = typer.Typer(pretty_exceptions_enable=False)

def read_lines_from_file(path):
    with open(get_full_path(path), "r") as f:
        return f.readlines()

def write_lines_to_file(lines, path):
    with open(get_full_path(path), "w") as f:
        f.writelines(lines)

def get_full_path(path):
    return os.path.realpath(os.path.expanduser(path))

def is_path_file(path):
    return os.path.isfile(get_full_path(path))

def convert_harmony_to_bass_tones_only(path: str):
    lines = read_lines_from_file(path)
    in_harmony = False
    for line_index in range(len(lines)):
        line = lines[line_index]
        if in_harmony:
            if line == '}\n':
                in_harmony = False
            else:
                parts = line.split(" ")
                for part_index in range(len(parts)):
                    part = parts[part_index]
                    if f"/" in part:
                        match = re.match(f"([a-z]*)([0-9.]*).*/([a-z]*)", part)
                        if match is not None:
                            part = f"{match.groups()[2]}{match.groups()[1]}"
                    elif f":" in part:
                        part = part[0:part.index(f":")]
                    parts[part_index] = part
                line = " ".join(parts)
        else:
            if line == 'harmonyOne = \\chordmode  {\n':
                in_harmony = True
        lines[line_index] = line
    write_lines_to_file(lines, path)

@app.command()
def bass_tones_only(path: str):
    if is_path_file(path):
        convert_harmony_to_bass_tones_only(path)
    else:
        os.chdir(path)
        for file_path in glob.glob("*.ly"):
            convert_harmony_to_bass_tones_only(file_path)

@app.command()
def test(path: str):
    lines = read_lines_from_file(path)
    write_lines_to_file(lines, path)

if __name__ == "__main__":
    app()
