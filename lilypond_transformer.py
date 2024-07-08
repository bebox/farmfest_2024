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
                    if r"/" in part:
                        match = re.match(f"([a-z]*)([0-9.]*).*/([a-z]*)", part)
                        if match is not None:
                            part = f"{match.groups()[2]}{match.groups()[1]}"
                    elif r":" in part:
                        part = part[0:part.index(r":")]
                    parts[part_index] = part
                line = " ".join(parts)
        else:
            #if line == 'harmonyOne = \\chordmode  {\n':
            if 'harmonyOne = ' in line:
                in_harmony = True
        lines[line_index] = line
    write_lines_to_file(lines, path)

@app.command()
def bass_tones_only(path: str):
    print("Bass tones only harmony")
    if is_path_file(path):
        convert_harmony_to_bass_tones_only(path)
        append_to_header(path, "titlex", "(Sparki)")
    else:
        for file_path in glob.glob(f"{path}/*.ly"):
            convert_harmony_to_bass_tones_only(file_path)
            append_to_header(file_path, "titlex", "(Sparki)")

def score_modifier(path: str, modifier: str):
    lines = read_lines_from_file(path)
    in_score = False
    for line_index in range(len(lines)):
        line = lines[line_index]
        if in_score:
            if line == '}\n':
                in_score = False
            else:
                if "harmonyOne" in line:
                    line = line.replace(r"\harmonyOne", fr"{modifier} \harmonyOne")
                if "staffOne" in line:
                    line = line.replace(r"\staffOne", fr"{modifier} \staffOne")
        else:
            if line == '\\score {\n':
                in_score = True
        lines[line_index] = line
    write_lines_to_file(lines, path)

def append_to_header(path, variable, text):
    lines = read_lines_from_file(path)
    in_header = False
    for line_index in range(len(lines)):
        line = lines[line_index]
        if in_header:
            if line == '}\n':
                in_header = False
            else:
                if variable in line:
                    parts = line.split(" ")
                    parts[-1] = f"{parts[-1][:-2]} {text}{parts[-1][-2:]}"
                    line = " ".join(parts)
        else:
            if line == '\\header {\n':
                in_header = True
        lines[line_index] = line
    write_lines_to_file(lines, path)

def staff_modifier(path: str, from_str: str, to_str: str):
    lines = read_lines_from_file(path)
    in_staff = False
    for line_index in range(len(lines)):
        line = lines[line_index]
        if in_staff:
            if line == '}\n':
                in_staff = False
            else:
                if from_str in line:
                    line = line.replace(from_str, to_str)
        else:
            if '\\staffOne =' in line:
                in_staff = True
        lines[line_index] = line
    write_lines_to_file(lines, path)

@app.command()
def transpose_b(path: str):
    print("Transpose to Bb")
    if is_path_file(path):
        score_modifier(path, r"\transpose c d")
        append_to_header(path, "titlex", "(Bb)")
    else:
        for file_path in glob.glob(f"{path}/*.ly"):
            score_modifier(file_path, r"\transpose c d")
            append_to_header(file_path, "titlex", "(Bb)")

@app.command()
def transpose_eb(path: str):
    print("Transpose to Eb")
    if is_path_file(path):
        score_modifier(path, r"\transpose es c'")
        append_to_header(path, "titlex", "(Eb)")
    else:
        for file_path in glob.glob(f"{path}/*.ly"):
            score_modifier(file_path, r"\transpose es c'")
            append_to_header(file_path, "titlex", "(Eb)")

@app.command()
def transpose_bass(path: str):
    print("Transpose to BASS")
    if is_path_file(path):
        score_modifier(path, r"\clef bass \transpose c' c")
        append_to_header(path, "titlex", "(BASS)")
        staff_modifier(path, r"\clef treble", r"\clef bass")
    else:
        for file_path in glob.glob(f"{path}/*.ly"):
            score_modifier(file_path, r"\clef bass \transpose c' c" )
            append_to_header(file_path, "titlex", "(BASS)")
            staff_modifier(file_path, r"\clef treble", r"\clef bass")


@app.command()
def test(path: str):
    lines = read_lines_from_file(path)
    write_lines_to_file(lines, path)

if __name__ == "__main__":
    app()
