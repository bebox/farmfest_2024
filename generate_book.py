#!/usr/bin/python

import os
import sys
import select
import pty
from subprocess import Popen
from dataclasses import dataclass
from enum import Enum
import shutil
from pathlib import Path
from typing import Optional

#VERBOSE = False
VERBOSE = True

LILYPOND_GENERATOR_EXEC="python ~/Work/git/duhovne_pjesme_novi_sad_1966/scripts/new/lilypond_generator.py"
LILYPOND_VERSION="2.24.3"
LILYPOND_SRC_PATH="./lilypond/src"
LILYPOND_BIN_PATH="/home/bebox/Work/git/lilypond-2.24.3/bin/lilypond"
LILYPOND_CONFIG_PATH="./lilypond/config/"
MUSESCORE_PATH="./musescore"
POINT_AND_CLICK="--no-point-and-click"
#POINT_AND_CLICK="--point-and-click"

class PageOrientation(Enum):
    Left = "--left-page"
    Right = "--no-left-page"

@dataclass
class Transposition:
    name: str
    source_path: str
    bin_path: str
    transformer_func: Optional[str]

@dataclass
class Song:
    name: str
    ordinal_number: int
    page_orientation: PageOrientation

song_list = [
    Song("al_ne_ja_vec_u_meni_krist", 1, PageOrientation.Right),
    Song("bijel_ko_snijeg", 2, PageOrientation.Right),
    Song("divan_si", 3, PageOrientation.Right),
    Song("doksologija", 4, PageOrientation.Right),
    Song("dubine", 5, PageOrientation.Right),
    Song("duboka_je_ceznja", 6, PageOrientation.Right),
    Song("haleluja", 7, PageOrientation.Right),
    Song("hvala_ti_moj_isuse", 8, PageOrientation.Left),
    Song("jesi_li_ociscen", 9, PageOrientation.Right),
    Song("jira", 10, PageOrientation.Right),
    Song("ljubav_si_beskrajna", 11, PageOrientation.Right),
    Song("obasjaj_nas", 12, PageOrientation.Right),
    Song("psalam_1", 13, PageOrientation.Right),
    Song("psalam_4", 14, PageOrientation.Right),
    Song("psalam_23", 15, PageOrientation.Right),
    Song("psalam_32", 16, PageOrientation.Right),
    Song("psalam_40", 17, PageOrientation.Right),
    Song("soon_and_very_soon", 18, PageOrientation.Left),
    Song("sretna_sigurnost", 19, PageOrientation.Left),
    Song("sto_blize_tebi", 20, PageOrientation.Right),
    Song("sto_grijeh_moze_oprati", 21, PageOrientation.Left),
    Song("svoje_brige", 22, PageOrientation.Right),
    Song("ti_mi_godis", 23, PageOrientation.Right),
    Song("ti_si_od_vjecnosti", 24, PageOrientation.Left),
    Song("ti_si_vjecan", 25, PageOrientation.Right),
    Song("u_kristu_cvrst_je_temelj_moj", 26, PageOrientation.Left),
    Song("u_kristu_samo", 27, PageOrientation.Right),
    Song("u_svim_borbama", 28, PageOrientation.Right),
    Song("u_tajnosti", 29, PageOrientation.Right),
    Song("u_tvojim_rukama", 30, PageOrientation.Right),
    Song("u_tvojim_rukama_english", 31, PageOrientation.Right),
    Song("zahvalimo_gospodu", 32, PageOrientation.Right),
    Song("znam", 33, PageOrientation.Right),
    Song("001", 34, PageOrientation.Right),
    Song("002", 35, PageOrientation.Left),
    Song("003", 36, PageOrientation.Right),
    Song("004", 37, PageOrientation.Left),
    Song("005", 38, PageOrientation.Right),
    Song("006", 39, PageOrientation.Left),
    Song("007", 40, PageOrientation.Right),
    Song("008", 41, PageOrientation.Left),
    Song("009", 42, PageOrientation.Right),
    Song("010", 43, PageOrientation.Left)
]

transposition_list = [
    Transposition("C", "./lilypond/src", "./lilypond/bin", None),
    Transposition("Bb", "./lilypond/src_b", "./lilypond/bin_b", "transpose-b"),
    Transposition("Eb", "./lilypond/src_eb", "./lilypond/bin_eb", "transpose-eb"),
    Transposition("Bass", "./lilypond/src_bass", "./lilypond/bin_bass", "transpose-bass"),
    Transposition("BassTonesOnly", "./lilypond/src_bto", "./lilypond/bin_bto", "bass-tones-only")
]

class TCOL:
    # Foreground:
    MAGENTA = '\033[95m'
    BLUE = '\033[94m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    RED = '\033[91m'
    # Formatting
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'
    # End colored text
    END = '\033[0m'
    NC = '\x1b[0m'  # No Color

def run_bash_cmd(cmd, logger=None, interaction={}, return_lines=True, return_code=False, cr_as_newline=False, remove_empty_lines=False):
    if VERBOSE:
        logger = print
    if logger: logger(f"CMD: {cmd}")
    master_fd, slave_fd = pty.openpty()
    line = ""
    lines = []
    with Popen(cmd, shell=True, preexec_fn=os.setsid, stdin=slave_fd, stdout=slave_fd, stderr=slave_fd, universal_newlines=True) as p:
        while p.poll() is None:
            r, w, e = select.select([sys.stdin, master_fd], [], [], 0.01)
            if master_fd in r:
                o = os.read(master_fd, 10240).decode("UTF-8")
                if o:
                    for c in o:
                        if cr_as_newline and c == "\r":
                            c = "\n"
                        if c == "\n":
                            if line and line not in interaction.values():
                                clean = line.strip().split('\r')[-1]
                                lines.append(clean)
                                if logger: logger(f"STD: {repr(line)}")
                            line = ""
                        else:
                            line += c
            if line:  # pass password to prompt
                for key in interaction:
                    if key in line:
                        if logger: logger(f"PMT: {line}")
                        os.write(master_fd, ("%s" % (interaction[key])).encode())
                        os.write(master_fd, "\r\n".encode())
                        line = ""
        if line:
            clean = line.strip().split('\r')[-1]
            lines.append(clean)

    os.close(master_fd)
    os.close(slave_fd)

    if remove_empty_lines:
        lines = list(filter(lambda l: len(l) > 0, lines))

    if return_lines and return_code:
        if logger: logger(f"RET: L[{lines}], C[{p.returncode}]")
        return lines, p.returncode
    elif return_code:
        if logger: logger(f"RET: C[{p.returncode}]")
        return p.returncode
    else:
        if logger: logger(f"RET: L{lines}")
        return lines

def get_full_path(path):
    return os.path.realpath(os.path.expanduser(path))

def check_if_path_exists(path):
    return os.path.exists(get_full_path(path))

def create_path(path):
    os.makedirs(get_full_path(path), exist_ok=True)

def remove_path(path, sudo_required=False):
    if check_if_path_exists(path):
        if not sudo_required:
            shutil.rmtree(get_full_path(path))
        else:
            run_bash_cmd(f"sudo rm {get_full_path(path)} -r")

def remove_file(path, sudo_required=False):
    if check_if_path_exists(path):
        if not sudo_required:
            os.remove(get_full_path(path))
        else:
            run_bash_cmd(f"sudo rm {get_full_path(path)}")

def get_file_list_in_path(path):
    return os.listdir(path)

def get_path_of_current_file(f):
    return str(Path(f).resolve().parent)

def create_dir_if_not_found(path):
    if not os.path.exists(get_full_path(path)):
        os.makedirs(get_full_path(path))

def convert_musescore_to_lilypond(song: Song):
    print(f"convert_musescore_to_lilypond: {TCOL.BLUE}{song.ordinal_number}{TCOL.END}, {TCOL.BOLD}{TCOL.GREEN}{song.name}{TCOL.END}")
    musescore_path = get_full_path(f"{MUSESCORE_PATH}/{song.name}.mscx")
    lilypond_path = get_full_path(f"{LILYPOND_SRC_PATH}/{song.name}.ly")
    if not check_if_path_exists(musescore_path):
        print(f"  {TCOL.YELLOW}no musescore file{TCOL.END}")
        return
    cmd = f"{LILYPOND_GENERATOR_EXEC} {musescore_path} --ly-output {lilypond_path} --lilypond-version {LILYPOND_VERSION} --custom-config --ordinal-number {song.ordinal_number} {song.page_orientation.value} {POINT_AND_CLICK} --comment-tempo"
    run_bash_cmd(cmd)

def transform_lilypond(transposition: Transposition):
    if transposition.transformer_func is None:
        return
    print(f"transform_lilypond {TCOL.BOLD}{transposition.name}{TCOL.END}")
    cmd = f"python lilypond_transformer.py {transposition.transformer_func} {transposition_list[0].source_path} --path-out {transposition.source_path}"
    run_bash_cmd(cmd)

def generate_lilypond(song: Song, transposition: Transposition):
    print(f"generate_lilypond: {TCOL.BLUE}{song.ordinal_number}{TCOL.END}, {TCOL.BOLD}{TCOL.GREEN}{song.name}{TCOL.END}, {TCOL.MAGENTA}transposition: {transposition.name}{TCOL.END}")
    lilypond_source_path = get_full_path(f"{transposition.source_path}/{song.name}.ly")
    if not check_if_path_exists(lilypond_source_path):
        print(f"  {TCOL.RED}no lilypond file{TCOL.END}")
        return

    cmd = f"{LILYPOND_BIN_PATH} -I {get_full_path(LILYPOND_CONFIG_PATH)} -o {get_full_path(transposition.bin_path)} {lilypond_source_path}"
    run_bash_cmd(cmd)

if __name__ == "__main__":
    for song in song_list:
        convert_musescore_to_lilypond(song)
    for transposition in transposition_list:
        create_dir_if_not_found(get_full_path(transposition.source_path))
        create_dir_if_not_found(get_full_path(transposition.bin_path))
        transform_lilypond(transposition)
        for song in song_list:
            generate_lilypond(song, transposition)
