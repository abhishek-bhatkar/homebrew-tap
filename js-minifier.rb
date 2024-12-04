class JsMinifier < Formula
  desc "Fast JavaScript minification tool written in Go"
  homepage "https://github.com/abhishek-bhatkar/js-minifier"
  url "https://github.com/abhishek-bhatkar/js-minifier/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6208cd9eb560332e38e67d47f33d98281b327342944c3c17040f65c034a1cadc"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"js-minifier"
  end

  test do
    system "#{bin}/js-minifier", "--version"
  end
end
