load("@rules_java//java:defs.bzl", "java_test")


java_test(
    name = "frdtests",
    srcs = glob(["src/main/java/org/atmecs/*.java"]),
    main_class = "org.atmecs.TestNGRunner",
    use_testrunner=0,
)