load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
def pinned_maven_install():
    maybe(
        http_file,
        name = "rules_jvm_external_jq_linux",
        urls = ["https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64"],
        sha256 = "af986793a515d500ab2d35f8d2aecd656e764504b789b66d7e1a0b727a124c44",
        downloaded_file_path = "jq",
        executable = True,
    )
    maybe(
        http_file,
        name = "rules_jvm_external_jq_macos",
        urls = ["https://github.com/stedolan/jq/releases/download/jq-1.6/jq-osx-amd64"],
        sha256 = "5c0a0a3ea600f302ee458b30317425dd9632d1ad8882259fcaf4e9b868b2b1ef",
        downloaded_file_path = "jq",
        executable = True,
    )
    maybe(
        http_file,
        name = "rules_jvm_external_jq_windows",
        urls = ["https://github.com/stedolan/jq/releases/download/jq-1.6/jq-win64.exe"],
        sha256 = "a51d36968dcbdeabb3142c6f5cf9b401a65dc3a095f3144bd0c118d5bb192753",
        downloaded_file_path = "jq",
        executable = True,
    )