class Watchteleboy < Formula
  desc "Script to watch streams from teleboy.ch without browser/flash"
  homepage "https://github.com/reduzent/watchteleboy"
  url "https://github.com/reduzent/watchteleboy/archive/v1.31.zip"
  sha256 "961b1840c1601381868a58f1adbce8a486f79347a3a9beba526b261ae91a1666"

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
