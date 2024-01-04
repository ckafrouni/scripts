# ./build.sh [MODE] [ARGUMENTS]
#
# Modes:
#   build: (default) Builds the project
#   clean: Removes the build directory
#   run: Runs the project

mode=$1

[ -z "$mode" ] && mode="build"

build_dir="build"

if [ "$mode" == "build" ]; then
    echo -e "\033[0;31mBuild the project...\033[0m"7

    mkdir -p $build_dir
    cd $build_dir
    cmake ..
    make
    cd ..
    exit 0
fi

if [ "$1" == "clean" ]; then
    echo -e "\033[0;31mClean the build directory...\033[0m"
    rm -rf $build_dir
    exit 0
fi

if [ "$1" == "run" ]; then
    echo -e "\033[0;31mRun the project...\033[0m"
    shift 1 # remove the first argument

    ./build.sh build

    cd $build_dir
    ./main $@
    exit 0
fi

echo -e "\033[0;31mInvalid mode: $mode\033[0m"
