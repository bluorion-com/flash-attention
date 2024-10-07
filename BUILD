load("@aspect_rules_py//py:defs.bzl", "py_binary")

py_binary(
    name = "build_wheel",
    srcs = [
        "setup.py",
    ],
    args = [
        "build_ext",
        "-j64",
        "bdist_wheel",
    ],
    data = glob(
        [
            "*",
            "csrc/*",
            "flash_attn/*",
        ],
        allow_empty = False,
        exclude_directories = 0,
    ),
    visibility = [
        "//visibility:public",
    ],
    deps = [
        "@pip//packaging:pkg",
        "@pip//setuptools:pkg",
        "@pip//torch:pkg",
        "@pip//wheel:pkg",
	"@pip//pip:pkg",
    ],
)
