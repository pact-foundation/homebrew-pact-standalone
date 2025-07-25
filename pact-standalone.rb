class PactStandalone < Formula
  desc "Standalone pact CLI executable using the Ruby Pact impl and Traveling Ruby"
  homepage "https://github.com/pact-foundation/pact-standalone"
  version "2.5.1"
  on_macos do
    on_intel do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.1/pact-2.5.1-osx-x86_64.tar.gz"
      sha256 "77730ff5093d913e6125de3e4ae1768caf871a54b8cb2d8fd2fe3bb49de14c85"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.1/pact-2.5.1-osx-arm64.tar.gz"
      sha256 "875aa190e363b45f481b9b975bb7e80ba8bd974a07e13c08537e672ff04cad3a"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.1/pact-2.5.1-linux-x86_64.tar.gz"
      sha256 "852efd180b5e8cff7fe97952edc3626f62b992b9ed83f332f1d8c6479a9db689"
    end
    on_arm do
      url "https://github.com/pact-foundation/pact-standalone/releases/download/v2.5.1/pact-2.5.1-linux-arm64.tar.gz"
      sha256 "267017430094430eac78dc20212c9d43c6bbd17771057f76cb0dbe7649e765fc"
    end
  end

  def install
    # pact-standalone
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
    puts "# Run 'pact-mock-service --help' (see https://github.com/pact-foundation/pact-standalone/releases/)"
  end

  test do
    system "#{bin}/pact", "help"
    system "#{bin}/pact-broker", "help"
    system "#{bin}/pact-message", "help"
    system "#{bin}/pact-plugin-cli", "help"
    system "#{bin}/pact-mock-service", "help"
    system "#{bin}/pact-provider-verifier", "help"
    system "#{bin}/pact-stub-service", "help"
    system "#{bin}/pactflow", "help"
  end
end
