#!/usr/bin/env python3
import argparse
import subprocess

def import_d_file(in_file) -> str:
    out_text = ''

    with open(in_file) as file:
      for idx, line in enumerate(file):
        if idx == 0:
          if line.endswith(' \\\n'):
            out_text += line[:-3].replace('\\', '/') + " \\\n"
          else:
            out_text += line.replace('\\', '/')
        else:
          suffix = ''
          if line.endswith(' \\\n'):
            suffix = ' \\'
            path = line.lstrip()[:-3]
          else:
            path = line.strip()
          if path.startswith('Z:'):
            # direct mapping to unix path
            path = path[2:].replace('\\', '/')
          else:
            # use winepath (very slow!)
            cmd = subprocess.run(['winepath', '-u', path], capture_output=True, env={'WINEDEBUG': '-all'})
            if cmd.returncode != 0:
              print("winepath failed with exit code %d:" % cmd.returncode, cmd.stderr)
              exit(1)
            path = cmd.stdout.decode('utf-8').rstrip()
          out_text += "\t" + path + suffix + "\n"

    return out_text

def main():
    parser = argparse.ArgumentParser(
        description="""Transform a .d file from Wine paths to normal paths"""
    )
    parser.add_argument(
        "d_file",
        help="""Dependency file in""",
    )
    parser.add_argument(
        "d_file_out",
        help="""Dependency file out""",
    )
    args = parser.parse_args()

    output = import_d_file(args.d_file)

    with open(args.d_file_out, "w", encoding="UTF-8") as f:
        f.write(output)


if __name__ == "__main__":
    main()