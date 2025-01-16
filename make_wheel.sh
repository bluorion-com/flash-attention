if ! command -v ninja &> /dev/null
then
    echo "ninja could not be found"
    exit 1
fi

./update_submodules.sh

bazel run //third_party/flash-attention:build_wheel

cp bazel-bin/third_party/flash-attention/build_wheel.runfiles/_main/dist/*.whl /mnt/nfs/home/gmi/prebuilt_wheels/

ls /mnt/nfs/home/gmi/prebuilt_wheels/flash_* -la

