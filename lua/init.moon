print "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA "
a = _dap.add_item "test", "Item"
a = _dap.get_bool "test1", "bool", false
print "bbb ->", tostring(a)
_dap.add_bool "test", "bool", true
print _dap.get_bool("test", "bool", false)
print "BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"

test2 = dap.add_item "test2", "Item"
test2\add_bool "bool", true
print "test2.bool", test2\get_bool("bool")
test2\set_bool "bool", false
print "test2.bool", test2\get_bool("bool")
print "CCCCCCCCCCCCCCCCC"