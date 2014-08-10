local awful = require("awful")

-- {{{ Orangered Widget helper
function get_orangereds()
	local file = io.popen('python ' .. awful.util.getdir("config") .. 'check_mail.py')
	local output = file:read('*all')
	local rc = {file:close()}

	if rc[3] > 0 then
		return awful.util.getdir("config") .. "/images/unread.png"
	else
		return awful.util.getdir("config") .. "/images/read.png"
	end
end
--- }}}
