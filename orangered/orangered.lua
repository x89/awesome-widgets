function get_orangereds()
	local file = io.popen('python check_mail.py')
	local output = file:read('*all')
	local rc = {file:close()}

	if rc[3] > 0 then
		return "" .. rc[3] .. " orangereds"
	else
		return ""
	end
end
