#!/usr/bin/env lua

require('io')

local file = io.popen('python check_mail.py')
local output = file:read('*all')
local rc = {file:close()}

if rc[1] then print(rc[3]) end
