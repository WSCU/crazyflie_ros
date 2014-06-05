FILE(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/crazyflie/msg"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/MotorData.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_MotorData.lisp"
  "../msg_gen/lisp/StabData.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_StabData.lisp"
  "../msg_gen/lisp/AccelData.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_AccelData.lisp"
  "../msg_gen/lisp/GyroData.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_GyroData.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
