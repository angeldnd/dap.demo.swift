// Playground - noun: a place where people can play

import UIKit

import DapCore
import DapLua

var a: Item = Registry.Global.add("test")!
a.properties.addBool("test", true)
a.addBool("bool", true)
a.addInt("int", 1)
a.addFloat("float", 1.1)
a.addDouble("double", 1.1)
a.addString("string", "str")

a.getString("string")

var lua = DapLuaState.sharedState()

lua.eval("result = dap.set_bool('test', 'bool', false); dap.set_bool('test', 'result', result)")
a.getBool("bool")

lua.eval("dap.set_int('test', 'int', 10)")
a.getInt("int")

lua.eval("dap.set_float('test', 'float', 10.2)")
a.getFloat("float")

lua.eval("dap.set_double('test', 'double', 10.2)")
a.getDouble("double")

lua.eval("dap.set_string('test', 'string', 'next')")
a.getString("string")

lua.eval("dap.set_string('test', 'string', tostring(package.path))")
a.getString("string")

lua.eval("dap.set_string('test', 'string', tostring(lfs.currentdir()))")
a.getString("string")
a.getString("string")?.lastPathComponent

lua.eval("lfs.chdir('/Users/yjpark/projects/angeldnd/dap/core/swift')")

lua.eval("dap.set_string('test', 'string', tostring(lfs.currentdir()))")
a.getString("string")

lua.eval("require 'init'; dap.set_string('test', 'string', tostring(lfs))")
a.getString("string")

lua.eval("e = require 'moonscript'; dap.set_string('test', 'string', tostring(e))")
a.getString("string")

lua.eval("v = require 'moonscript.version'.version; dap.set_string('test', 'string', v)")
a.getString("string")

lua.eval("t = require 'test'; dap.set_string('test', 'string', tostring(t))")
a.getString("string")

lua.eval("t = require 'test1'; dap.set_string('test', 'string', tostring(t))")
a.getString("string")

//lua.eval("require 'init'")

lua.eval("dap.add_string('test', 's', 'new')")
a.getString("s")

lua.eval("print(dap.remove_string('test', 's'))")
a.getString("s")

a.setBool("bool", true)
if let d = a.dump() {
    if let f = d.getData("bool") {
        f.getString("type")
        f.getBool("value")
    }
    
    var b: Item = Registry.Global.add("test1")!
    b.load(d)
    b.getBool("bool")
    b.getString("string")
    b.getString("s")
    b.getDouble("double")
}
