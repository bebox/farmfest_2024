#!/usr/bin/python

import typer

app = typer.Typer(pretty_exceptions_enable=False)

def read_lines_from_file(path):
    with open(path, "r") as f:
        return f.readlines()

def write_lines_to_file(lines, path):
    with open(path, "w") as f:
        f.writelines(lines)

@app.command()
def main(path: str):
    lines = read_lines_from_file(path)
    write_lines_to_file(lines, path)

if __name__ == "__main__":
    app()
