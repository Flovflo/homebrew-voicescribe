class Voicescribe < Formula
  desc "Local AI dictation app for macOS powered by Qwen3-ASR"
  homepage "https://github.com/Flovflo/VoiceScribe"
  url "https://github.com/Flovflo/VoiceScribe/releases/download/v1.4.0/VoiceScribe-v1.4.0.tar.gz"
  sha256 "d8470c59f5b9a03734039816afffc86167c46f6a3ad2eb1ab8a5eb57d94e4a3d"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    prefix.install "VoiceScribe.app"
    bin.write_exec_script "#{prefix}/VoiceScribe.app/Contents/MacOS/VoiceScribe"
  end

  def post_install
    ln_sf "#{prefix}/VoiceScribe.app", "/Applications/VoiceScribe.app"
  end

  def caveats
    <<~EOS
      🎙️ VoiceScribe #{version} is installed!

      To launch:
        open #{opt_prefix}/VoiceScribe.app
        # Or find it in Launchpad!

      PERMISSIONS:
        Grant Accessibility & Microphone access when prompted.

      HOTKEY: Option + Space to start/stop recording.
    EOS
  end

  test do
    assert_path_exists prefix/"VoiceScribe.app/Contents/MacOS/VoiceScribe"
    assert_path_exists bin/"VoiceScribe"
  end
end
