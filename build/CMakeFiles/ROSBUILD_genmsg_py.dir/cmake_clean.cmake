FILE(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/crazyflie/msg"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/crazyflie/msg/__init__.py"
  "../src/crazyflie/msg/_MotorData.py"
  "../src/crazyflie/msg/_StabData.py"
  "../src/crazyflie/msg/_AccelData.py"
  "../src/crazyflie/msg/_GyroData.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
