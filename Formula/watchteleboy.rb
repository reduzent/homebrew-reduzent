class Watchteleboy < Formula
  desc "Script to watch streams from teleboy.ch without browser/flash"
  homepage "https://github.com/reduzent/watchteleboy"
  url "https://github.com/reduzent/watchteleboy/archive/v1.29.zip"
  sha256 "94d76b735c924709367818db1d81ecc42db520a0fa02ed3a1c2f3643c1abd8fd"

  depends_on "coreutils"
  depends_on "gnu-sed"
  depends_on "jq"
  depends_on "mpv" => :recommended

  def install
    bin.install "watchteleboy"
    man1.install "DOCS/man/watchteleboy.1"
  end

  test do
    system "#{prefix}/bin/watchteleboy", "--help"
  end
end
