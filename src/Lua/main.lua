comm.socketServerSetIp('*')
comm.socketServerSetPort(8067)
comm.socketServerScreenShotResponse()
comm.socketServerIsConnected()
data = comm.socketServerResponse()


if data then
	 if data == 'up'
		 then 
			joypad.set({Up=true}, 1)
			emu.frameadvance()
		 end
	if data == 'down'
		 then
			joypad.set({Down=true}, 1)
			emu.frameadvance()
		 end
	if data == 'left'
		 then
			joypad.set({Left=true}, 1)
			emu.frameadvance()
		 end
	 if data == 'right'
		 then
			joypad.set({Right=true}, 1)
			emu.frameadvance()
		 end
	 if data == 'a'
		 then
		 end
	 if data == 'b'
		 then
		 end
	 if data == 'y'
		 then
		 end
	 if data == 'x'
		 then
		 end
	if data == 'select'
		 then
		 end
	if data == 'start'
		 then
		 end
	if data == 'lb'
		 then
		 end
	if data == 'rb'
		 then
		 end
end