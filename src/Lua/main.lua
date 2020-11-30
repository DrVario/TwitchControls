comm.socketServerSetTimeout(1);
comm.socketServerSend("Game Starting!")
comm.socketServerResponse();


while true do
	line = comm.socketServerResponse()
		if line == 'up'
			then 
				joypad.set({Up=true}, 1)
				emu.frameadvance()
				comm.socketServerSend("Up Recieved")
			 end
		if line == 'down'
			 then
				joypad.set({Down=true}, 1)
				emu.frameadvance()
				comm.socketServerSend("Down Recieved")
			 end
		if line == 'left'
			 then
				joypad.set({Left=true}, 1)
				emu.frameadvance()
				comm.socketServerSend("Left Recieved")
			 end
		 if line == 'right'
			 then
				joypad.set({Right=true}, 1)
				emu.frameadvance()
				comm.socketServerSend("Right Recieved")
			 end
		 if line == 'a'
			 then
				joypad.set({A=true}, 1)
				emu.frameadvance()
				comm.socketServerSend("A Recieved")
			 end
		 if line == 'b'
			 then
				joypad.set({B=true}, 1)
				emu.frameadvance()
				comm.socketServerSend("B Recieved")
			 end
		 if line == 'y'
			 then
				joypad.set({Y=true}, 1)
				emu.frameadvance()
				comm.socketServerSend("Y Recieved")
			 end
		 if line == 'x'
			 then
				joypad.set({X=true}, 1)
				emu.frameadvance()
				comm.socketServerSend("X Recieved")
			 end
		if line == 'select'
			 then
				joypad.set({Select=true}, 1)
				emu.frameadvance()
				comm.socketServerSend("Select Recieved")
			 end
		if line == 'start'
			 then
				joypad.set({Start=true}, 1)
				emu.frameadvance()
				comm.socketServerSend("Start Recieved")
			 end
		if line == 'lb'
			 then
				joypad.set({L=true}, 1)
				emu.frameadvance()
				comm.socketServerSend("L Recieved")
			 end
		if line == 'rb'
			 then
				joypad.set({R=true}, 1)
				emu.frameadvance()
				comm.socketServerSend("R Recieved")
			 end
	emu.frameadvance();

end

tcp:close()
