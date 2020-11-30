comm.socketServerSetTimeout(1);
comm.socketServerSend("Game Starting!")
comm.socketServerResponse();


while true do
	line = comm.socketServerResponse()
	input = {}
	input['A'] = false
	input['B'] = false
	input['Down'] = false
	input['L'] = false
	input['Left'] = false
	input['Power'] = false
	input['R'] = false
	input['Right'] = false
	input['Select'] = false
	input['Start'] = false
	input['Up'] = false

		if line == 'up'
			then 
				input['Up'] = true
				joypad.set(input)
				emu.frameadvance()
				comm.socketServerSend("Up Recieved")
			 end
		if line == 'down'
			 then
				input['Down'] = true
				joypad.set(input)
				emu.frameadvance()
				comm.socketServerSend("Down Recieved")
			 end
		if line == 'left'
			 then
				input['Left'] = true
				joypad.set(input)
				emu.frameadvance()
				comm.socketServerSend("Left Recieved")
			 end
		 if line == 'right'
			 then
				input['Right'] = true
				joypad.set(input)
				emu.frameadvance()
				comm.socketServerSend("Right Recieved")
			 end
		 if line == 'a'
			 then
				input['A'] = true
				joypad.set(input)
				emu.frameadvance()
				comm.socketServerSend("A Recieved")
			 end
		 if line == 'b'
			 then
				input['B'] = true
				joypad.set(input)
				emu.frameadvance()
				comm.socketServerSend("B Recieved")
			 end
		if line == 'select'
			 then
				input['Select'] = true
				joypad.set(input)
				emu.frameadvance()
				comm.socketServerSend("Select Recieved")
			 end
		if line == 'start'
			 then
				input['Start'] = true
				joypad.set(input)
				emu.frameadvance()
				comm.socketServerSend("Start Recieved")
			 end
		if line == 'lb'
			 then
				input['L'] = true
				joypad.set(input)
				emu.frameadvance()
				comm.socketServerSend("L Recieved")
			 end
		if line == 'rb'
			 then
				input['L'] = true
				joypad.set(input)
				emu.frameadvance()
				comm.socketServerSend("R Recieved")
			 end
	emu.frameadvance();

end

tcp:close()
