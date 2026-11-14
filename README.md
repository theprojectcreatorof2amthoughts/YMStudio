# YMStudio

YMStudio is an experimental digital-audio-workstation application written in YXX/Y++.

## Language rule

**All YMStudio application code is Y++**:
- `.ycpp` for the application entry point.
- `.hlypp` for application modules and reusable Y++ libraries.
- `.yaq` for Adequit helper modules.

There are no C or C++ application source files in this repository. Native platform services, when added, belong in the YPP compiler/runtime or a separate YPP platform host—not in YMStudio's application layer.

## Repository layout

- `main.ycpp` — application entry point and module loading.
- `msc/` — Music Studio Core modules.
- `Makefile` — builds the project with `gy++`.

## Build

Install the YPP toolchain and make sure `gy++` is on your PATH:

```sh
make
```

The build command checks the Y++ entry point and imported libraries, then writes `ymstudio.lef`.
Use `make clean` to remove the generated executable.

## Application modules

- Project settings, tempo and time signature.
- Transport, recording state and loop range.
- Track selection and arrangement clip editing.
- Piano note and keyboard input state.
- Mixer controls and master channel.
- Instrument voice, envelope, tuning and polyphony settings.
- Reverb, delay and compressor parameter models.
- GUI view state, panel visibility, zoom, snap and command routing.
- Export configuration and application lifecycle.

## Current implementation status

This repository is an application/core foundation, **not yet a finished graphical DAW**. The GUI module currently models views, panels, dialogs, commands and layout preferences; it does not draw a native window or receive real mouse/keyboard events yet. Audio configuration and effect/instrument modules currently store settings; they do not yet produce sound or process audio. Export configuration does not yet write WAV files.

The next platform milestone is a YPP-native GUI host API (window creation, drawing primitives, text, input events and frame lifecycle). YMStudio will call that API from Y++ without adding C/C++ application code to this repository. Audio-device and DSP host APIs follow the same boundary.

## Development principles

1. Keep application behavior and project state in Y++.
2. Keep platform-specific implementation outside this repository, inside the YPP toolchain/runtime.
3. Validate every imported `.hlypp` module through `gy++` before release.
4. Do not describe state models as working audio, rendering or GUI features.
