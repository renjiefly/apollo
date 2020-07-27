# Apollo external dependencies that can be loaded in WORKSPACE files.
load("//third_party/absl:workspace.bzl", absl = "repo")
load("//third_party/adolc:workspace.bzl", adolc = "repo")
load("//third_party/adv_plat:workspace.bzl", adv_plat = "repo")
load("//third_party/ad_rss_lib:workspace.bzl", ad_rss_lib = "repo")
load("//third_party/atlas:workspace.bzl", atlas = "repo")
load("//third_party/benchmark:workspace.bzl", benchmark = "repo")
load("//third_party/boost:workspace.bzl", boost = "repo")
load("//third_party/civetweb:workspace.bzl", civetweb = "repo")
load("//third_party/console_bridge:workspace.bzl", console_bridge = "repo")
load("//third_party/cpplint:workspace.bzl", cpplint = "repo")
load("//third_party/eigen3:workspace.bzl", eigen = "repo")
load("//third_party/ffmpeg:workspace.bzl", ffmpeg = "repo")
load("//third_party/fastrtps:workspace.bzl", fastrtps = "repo")
load("//third_party/glog:workspace.bzl", glog = "repo")
load("//third_party/gtest:workspace.bzl", gtest = "repo")
load("//third_party/gflags:workspace.bzl", gflags = "repo")
load("//third_party/ipopt:workspace.bzl", ipopt = "repo")
load("//third_party/local_integ:workspace.bzl", local_integ = "repo")
load("//third_party/libtorch:workspace.bzl", libtorch_cpu = "repo_cpu", libtorch_gpu = "repo_gpu")
load("//third_party/lz4:workspace.bzl", lz4 = "repo")
load("//third_party/ncurses5:workspace.bzl", ncurses5 = "repo")
load("//third_party/nlohmann_json:workspace.bzl", nlohmann_json = "repo")
load("//third_party/npp:workspace.bzl", npp = "repo")
load("//third_party/opencv:workspace.bzl", opencv = "repo")
load("//third_party/osqp:workspace.bzl", osqp = "repo")
load("//third_party/poco:workspace.bzl", poco = "repo")
load("//third_party/proj4:workspace.bzl", proj4 = "repo")
load("//third_party/protobuf:workspace.bzl", protobuf = "repo")
load("//third_party/qpOASES:workspace.bzl", qpOASES = "repo")
load("//third_party/qt5:workspace.bzl", qt5 = "repo")
load("//third_party/sqlite3:workspace.bzl", sqlite3 = "repo")
load("//third_party/tf2:workspace.bzl", tf2 = "repo")
load("//third_party/tinyxml2:workspace.bzl", tinyxml2 = "repo")
load("//third_party/uuid:workspace.bzl", uuid = "repo")
load("//third_party/yaml_cpp:workspace.bzl", yaml_cpp = "repo")
# load("//third_party/glew:workspace.bzl", glew = "repo")

load("//third_party/gpus:cuda_configure.bzl", "cuda_configure")
load("//third_party/py:python_configure.bzl", "python_configure")
load("//third_party/tensorrt:tensorrt_configure.bzl", "tensorrt_configure")
load("//third_party/vtk:vtk_configure.bzl", "vtk_configure")
load("//third_party/pcl:pcl_configure.bzl", "pcl_configure")

def initialize_third_party():
    """ Load third party repositories.  See above load() statements. """

    absl()
    adolc()
    adv_plat()
    ad_rss_lib()
    atlas()
    benchmark()
    boost()
    console_bridge()
    cpplint()
    civetweb()
    eigen()
    fastrtps()
    ffmpeg()
    gflags()
    glog()
    gtest()
    ipopt()
    local_integ()
    libtorch_cpu()
    libtorch_gpu()
    lz4()
    ncurses5()
    nlohmann_json()
    npp()
    opencv()
    osqp()
    poco()
    proj4()
    protobuf()
    qpOASES()
    qt5()
    sqlite3()
    tf2()
    tinyxml2()
    uuid()
    yaml_cpp()

# Define all external repositories required by
def apollo_repositories():
    cuda_configure(name = "local_config_cuda")
    tensorrt_configure(name = "local_config_tensorrt")
    python_configure(name = "local_config_python")
    vtk_configure(name = "local_config_vtk")
    pcl_configure(name = "local_config_pcl")

    initialize_third_party()
