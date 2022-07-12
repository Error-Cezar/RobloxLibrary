function module.getDate2(sec)
	local date = os.date("!*t", sec)
	print(date)
	local Month = GetMonth(date["month"])
	local str =  date["day"]..","..Month.." "..date["year"].." "..date["hour"]..":"..date["min"].." GMT"
	return str
end
