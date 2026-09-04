class DatumaK < Formula
  desc "Data contract plus templates that generate source"
  homepage "https://github.com/marthvon/datuma_k"
  version "1.0.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/marthvon/datuma_k/releases/download/v1.0.0/datuma_k-macos-aarch64"
      sha256 "f8d73777c68bc170b35e2d6cd582f432b94c3247332c686052aac810d9c8e82e"
    end
    on_intel do
      url "https://github.com/marthvon/datuma_k/releases/download/v1.0.0/datuma_k-macos-x86_64"
      sha256 "83a4219ac1bfba6489e79060f86392ebaf6385d04314d9616ecef5adc1e8f4ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/marthvon/datuma_k/releases/download/v1.0.0/datuma_k-linux-aarch64"
      sha256 "1c3b9f8d157bceffddd7be5742eed42cb113253210ac2285006274110b211d31"
    end
    on_intel do
      url "https://github.com/marthvon/datuma_k/releases/download/v1.0.0/datuma_k-linux-x86_64"
      sha256 "c02eea2826f9a647aba1942a24df7692ad391754a3453dbdd98c4f2026260f42"
    end
  end

  def install
    bin.install Dir["datuma_k*"].first => "datuma_k"
  end

  test do
    output = shell_output("#{bin}/datuma_k 2>&1", 1)
    assert_match "usage: datuma_k", output
  end
end
