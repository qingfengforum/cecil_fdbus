file(REMOVE_RECURSE
  "idl-gen/common.base.MessageHeader.pb.h"
  "idl-gen/common.base.MessageHeader.pb.cc"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/build_proto_source.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
