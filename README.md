# Homebrew Tap for VoiceScribe

Official Homebrew tap for [VoiceScribe](https://github.com/Flovflo/VoiceScribe), the native Swift + MLX dictation app for macOS.

## Install

```bash
brew tap Flovflo/voicescribe
brew install voicescribe
```

## Requirements

- macOS 14+
- Apple Silicon
- microphone permission
- accessibility permission for automatic paste

## Notes

- this tap installs the official app bundle from the main VoiceScribe GitHub releases
- no Python runtime or extra ASR dependency is required
- launch with `open /opt/homebrew/opt/voicescribe/VoiceScribe.app` or from `/Applications/VoiceScribe.app`

## License

MIT
