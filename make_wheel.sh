bazel run third_party/flash-attn::build_wheel
cp bazel-bin/third_party/flash-attn/build_wheel.runfiles/_main/dist/*.whl /mnt/nfs/home/gmi/prebuilt_wheels/
