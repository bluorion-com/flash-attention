./update_submodules.sh

bazel run third_party/flash-attention:build_wheel

cp bazel-bin/third_party/flash-attention/build_wheel.runfiles/_main/dist/*.whl /mnt/nfs/home/gmi/prebuilt_wheels/

ls /mnt/nfs/home/gmi/prebuilt_wheels/flash_*

