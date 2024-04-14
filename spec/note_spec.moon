import scientific from require 'lmt.scientific'
import describe, it from require "busted"

describe 'parsing scientific notation',->
  it "should parse scientific notation",->
    assert.are.same { 0, 0 }, scientific("A4")
    assert.are.same { -3, -3 }, scientific("C0")
    -- assert.are.same { -4, 4 }, scientific("c#3")
    assert.are.same { -2, -1 }, scientific("D2")
    assert.are.same { 3, -13 }, scientific("Ebb0")
    assert.are.same { -5, 12 }, scientific("gx6")
    assert.are.same { 5, -11 }, scientific("fb3")
