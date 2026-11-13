# YMStudio

YMStudio is an experimental digital-audio-workstation core written in YCPP/YLANG++.

## Repository layout

- `main.ycpp` — application entry point and module loading.
- `msc/` — Music Studio Core (`.hlypp`) modules and the Adequit tool module.
- `Makefile` — builds the project with `gy++`.

## Build

Install the YPP toolchain and make sure `gy++` is on your PATH:

```sh
make
```

The build command uses the project's `.hlypp` modules and writes `ymstudio.lef`.
Use `make clean` to remove the generated executable.

## Current core

The current implementation provides validated project/BPM state, transport and recording
state, track selection, piano note/velocity state, keyboard input state, mixer controls,
audio configuration state, and WAV-export preparation state.

**Important:** this is currently a DAW application/core prototype. The repository does not
yet contain a real audio-device backend, sample playback engine, DSP/effects graph, GUI,
or actual WAV file writer. The audio and export modules currently manage application state;
they do not claim to produce sound or render files.

## Language conventions

The source keeps the existing YCPP vocabulary and file extensions:
- `.ycpp` application source
- `.hlypp` Header Library Y modules
- `.yaq` Adequit tool modules
- `!#libinc` for Header Library Y imports
- `!#adeq` for Adequit imports
