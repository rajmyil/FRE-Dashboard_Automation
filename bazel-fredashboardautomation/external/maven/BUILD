
package(default_visibility = ["//visibility:public"])

load("@rules_jvm_external//private/rules:jvm_import.bzl", "jvm_import")
load("@rules_jvm_external//private/rules:jetifier.bzl", "jetify_aar_import", "jetify_jvm_import")

jvm_import(
	name = "aopalliance_aopalliance",
	jars = ["v1/https/repo1.maven.org/maven2/aopalliance/aopalliance/1.0/aopalliance-1.0.jar"],
	srcjar = "v1/https/repo1.maven.org/maven2/aopalliance/aopalliance/1.0/aopalliance-1.0-sources.jar",
	deps = [
	],
	tags = ["maven_coordinates=aopalliance:aopalliance:1.0"],
)
alias(
	name = "aopalliance_aopalliance_1_0",
	actual = "aopalliance_aopalliance",
)
jvm_import(
	name = "com_beust_jcommander",
	jars = ["v1/https/repo1.maven.org/maven2/com/beust/jcommander/1.72/jcommander-1.72.jar"],
	srcjar = "v1/https/repo1.maven.org/maven2/com/beust/jcommander/1.72/jcommander-1.72-sources.jar",
	deps = [
	],
	tags = ["maven_coordinates=com.beust:jcommander:1.72"],
)
alias(
	name = "com_beust_jcommander_1_72",
	actual = "com_beust_jcommander",
)
jvm_import(
	name = "com_google_guava_guava",
	jars = ["v1/https/repo1.maven.org/maven2/com/google/guava/guava/19.0/guava-19.0.jar"],
	srcjar = "v1/https/repo1.maven.org/maven2/com/google/guava/guava/19.0/guava-19.0-sources.jar",
	deps = [
	],
	tags = ["maven_coordinates=com.google.guava:guava:19.0"],
)
alias(
	name = "com_google_guava_guava_19_0",
	actual = "com_google_guava_guava",
)
jvm_import(
	name = "com_google_inject_guice_no_aop",
	jars = ["v1/https/repo1.maven.org/maven2/com/google/inject/guice/4.1.0/guice-4.1.0-no_aop.jar"],
	deps = [
		":aopalliance_aopalliance",
		":com_google_guava_guava",
		":javax_inject_javax_inject",
	],
	tags = ["maven_coordinates=com.google.inject:guice:jar:no_aop:4.1.0"],
)
alias(
	name = "com_google_inject_guice_no_aop_4_1_0",
	actual = "com_google_inject_guice_no_aop",
)
jvm_import(
	name = "javax_inject_javax_inject",
	jars = ["v1/https/repo1.maven.org/maven2/javax/inject/javax.inject/1/javax.inject-1.jar"],
	srcjar = "v1/https/repo1.maven.org/maven2/javax/inject/javax.inject/1/javax.inject-1-sources.jar",
	deps = [
	],
	tags = ["maven_coordinates=javax.inject:javax.inject:1"],
)
alias(
	name = "javax_inject_javax_inject_1",
	actual = "javax_inject_javax_inject",
)
jvm_import(
	name = "junit_junit",
	jars = ["v1/https/repo1.maven.org/maven2/junit/junit/4.12/junit-4.12.jar"],
	srcjar = "v1/https/repo1.maven.org/maven2/junit/junit/4.12/junit-4.12-sources.jar",
	deps = [
		":org_hamcrest_hamcrest_core",
	],
	tags = ["maven_coordinates=junit:junit:4.12"],
)
alias(
	name = "junit_junit_4_12",
	actual = "junit_junit",
)
jvm_import(
	name = "org_hamcrest_hamcrest_core",
	jars = ["v1/https/repo1.maven.org/maven2/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar"],
	srcjar = "v1/https/repo1.maven.org/maven2/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3-sources.jar",
	deps = [
	],
	tags = ["maven_coordinates=org.hamcrest:hamcrest-core:1.3"],
)
alias(
	name = "org_hamcrest_hamcrest_core_1_3",
	actual = "org_hamcrest_hamcrest_core",
)
jvm_import(
	name = "org_testng_testng",
	jars = ["v1/https/repo1.maven.org/maven2/org/testng/testng/7.1.0/testng-7.1.0.jar"],
	srcjar = "v1/https/repo1.maven.org/maven2/org/testng/testng/7.1.0/testng-7.1.0-sources.jar",
	deps = [
		":com_beust_jcommander",
		":com_google_inject_guice_no_aop",
		":org_yaml_snakeyaml",
	],
	tags = ["maven_coordinates=org.testng:testng:7.1.0"],
)
alias(
	name = "org_testng_testng_7_1_0",
	actual = "org_testng_testng",
)
jvm_import(
	name = "org_yaml_snakeyaml",
	jars = ["v1/https/repo1.maven.org/maven2/org/yaml/snakeyaml/1.21/snakeyaml-1.21.jar"],
	srcjar = "v1/https/repo1.maven.org/maven2/org/yaml/snakeyaml/1.21/snakeyaml-1.21-sources.jar",
	deps = [
	],
	tags = ["maven_coordinates=org.yaml:snakeyaml:1.21"],
)
alias(
	name = "org_yaml_snakeyaml_1_21",
	actual = "org_yaml_snakeyaml",
)

genrule(
    name = "jq-binary",
    cmd = "cp $< $@",
    outs = ["jq"],
    srcs = select({
        "@bazel_tools//src/conditions:linux_x86_64": ["jq-linux"],
        "@bazel_tools//src/conditions:darwin": ["jq-macos"],
        "@bazel_tools//src/conditions:windows": ["jq-windows"],
    }),
)

sh_binary(
    name = "pin",
    srcs = ["pin.sh"],
    args = [
      "$(rootpath :jq-binary)",
    ],
    data = [
        ":jq-binary",
    ],
    visibility = ["//visibility:public"],
)

sh_binary(
    name = "outdated",
    srcs = ["outdated.sh"],
    data = [
        "@rules_jvm_external//private/tools/prebuilt:outdated_deploy.jar",
        "outdated.artifacts",
        "outdated.repositories"
    ],
)
