#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/estrong/work/demo_hybrid_astar/src/navigation/base_local_planner"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/estrong/work/demo_hybrid_astar/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/estrong/work/demo_hybrid_astar/install/lib/python2.7/dist-packages:/home/estrong/work/demo_hybrid_astar/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/estrong/work/demo_hybrid_astar/build" \
    "/usr/bin/python2" \
    "/home/estrong/work/demo_hybrid_astar/src/navigation/base_local_planner/setup.py" \
    build --build-base "/home/estrong/work/demo_hybrid_astar/build/navigation/base_local_planner" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/estrong/work/demo_hybrid_astar/install" --install-scripts="/home/estrong/work/demo_hybrid_astar/install/bin"
