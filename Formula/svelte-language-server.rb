require "language/node"

class SvelteLanguageServer < Formula
  desc "Language server for Svelte"
  homepage "https://github.com/sveltejs/language-tools/tree/master/packages/language-server"
  url "https://registry.npmjs.org/svelte-language-server/-/svelte-language-server-0.17.30.tgz"
  sha256 "6e74337faff625c23753db019d8097a7f8ed113c4632536896aaa49f82483c8c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink libexec/"bin/svelteserver" => "svelte-language-server"
  end

  test do
    assert_path_exists bin/"svelte-language-server"
    assert_path_exists libexec/"lib/node_modules/svelte-language-server"
  end
end
