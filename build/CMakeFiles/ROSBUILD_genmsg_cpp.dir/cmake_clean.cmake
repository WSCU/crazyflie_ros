FILE(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/crazyflie/msg"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/crazyflie/MotorData.h"
  "../msg_gen/cpp/include/crazyflie/StabData.h"
  "../msg_gen/cpp/include/crazyflie/AccelData.h"
  "../msg_gen/cpp/include/crazyflie/GyroData.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
