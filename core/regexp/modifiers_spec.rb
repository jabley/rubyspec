# -*- coding: utf-8 -*-
require File.dirname(__FILE__) + '/../../spec_helper'

describe "Regexp#modifiers" do
  it "returns the same inspect value for dynamic regexp whether once is used or not" do
    "ä"[/#{/\w/}/uo].inspect.should == "ä"[/#{/\w/}/u].inspect
  end
end
