require "language/node"

class TypescriptSveltePlugin < Formula
  desc "TypeScript plugin providing Svelte IntelliSense"
  homepage "https://github.com/sveltejs/language-tools/tree/master/packages/typescript-plugin"
  url "https://registry.npmjs.org/typescript-svelte-plugin/-/typescript-svelte-plugin-0.3.51.tgz"
  sha256 "6e4224fee07c4cfc20687e77b13099c5e1937ca5fdf98eb8a147134ade40b10f"
  license "MIT"

  depends_on "node"
  depends_on "vtsls"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
  end

  test do
    assert_path_exists libexec/"lib/node_modules/typescript-svelte-plugin"
  end
end
