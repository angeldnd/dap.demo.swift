// Playground - noun: a place where people can play

import UIKit

import DapCore
import DapMRuby

var item:Item = Registry.Global.add("test")!

item.addBool("b", true)
item.getBool("b")

var state:DapMRubyState = DapMRubyState.sharedState()

state.eval("puts 'test'")

var str = "Hello, playground"
