#!/usr/bin/env ruby

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "guideline"

checker = Guideline::LongLineChecker.new(:max => 80)
visitor = Guideline::Visitor.new(:checker => checker)
visitor.check
visitor.render
