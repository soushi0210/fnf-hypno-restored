function gc_event (udata)
	local h = metatable(udata).__gc
	if h then
	  h(udata)
	end
  end