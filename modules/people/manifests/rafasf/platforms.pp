class people::rafasf::platforms {
  include java
  include clojure
  include android

  android::version { '14': options => ['platform', 'add_on', 'system_image' ] }
  android::version { '16': options => ['platform', 'system_image' ] }
  android::version { '17': options => ['platform', 'system_image' ] }
  android::extra { 'extra-intel-Hardware_Accelerated_Execution_Manager': }
  include android::platform_tools
}
