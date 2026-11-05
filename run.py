from pathlib import Path
from vunit import VUnit

ROOT = Path(__file__).parent
vu = VUnit.from_argv(compile_builtins=False)
vu.add_vhdl_builtins()

lib = vu.add_library("lib")
lib.add_source_files(ROOT / "src" / "*.vhd", allow_empty=True)
lib.add_source_files(ROOT / "tb" / "*.vhd")
vu.main()
