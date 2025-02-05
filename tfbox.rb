# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfbox < Formula
  desc "Another terraform version selector, combined with docker"
  homepage "https://github.com/vahid-haghighat/tfbox"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vahid-haghighat/tfbox/releases/download/v1.1.0/tfbox_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "d6b0a25ad683b9e104da5d8640fa92be62604b7d4969693fafbb2b4f43b3cf9e"

      def install
        bin.install "tfbox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/vahid-haghighat/tfbox/releases/download/v1.1.0/tfbox_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d04e53b5e6a782765a332da323ec72471b9a0870c4a4fe55955016724bc526f3"

      def install
        bin.install "tfbox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vahid-haghighat/tfbox/releases/download/v1.1.0/tfbox_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "2f2a20bce107386b4133f07ab5cbda3b5e1eaa0b9f3a81954131f9f53881f24e"

        def install
          bin.install "tfbox"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vahid-haghighat/tfbox/releases/download/v1.1.0/tfbox_Linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "733a28cf902170f8c76a6a42abdb4f329697348da3de7782c67439381fe9833a"

        def install
          bin.install "tfbox"
        end
      end
    end
  end

  test do
    system "#{bin}/tfbox version"
  end
end
