require "rack/test"
require "test/unit"

# Always use local Rulers first
chuizi_lib_path = File.join(File.dirname(__FILE__), "..", "lib")
$LOAD_PATH.unshift File.expand_path(chuizi_lib_path)

require "chuizi"
