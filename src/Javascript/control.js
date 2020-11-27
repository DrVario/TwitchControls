const tmi = require('tmi.js');
const net = require('net');


//TODO add comment about how this is for tmi set up
const client = new tmi.Client({
	connection: {
		secure: true,
		reconnect: true
	},
	identity: {
		username: 'DrVario23',
		password: 'oauth:xlg5yi3erdly8rjbp4d0p9o0l2wqv3'
	},
	channels: ['DrVario23']
});

client.connect();

const server = net.createServer((socket) => {
	socket.on('data', (data) => {
		console.log(data.toString());
	});
	//From the offical tmi website. Simple command handler.
		client.on('message', (channel, tags, message, self) => {
			if(self || !message.startsWith('!')) return;

			const args = message.slice(1).split(' ');
			const command = args.shift().toLowerCase();

			switch(command) {
				case "up":
					socket.write('up');
					break;
				case "down":
					socket.write('down');
					break;
				case "left":
					socket.write('left');
					break;
				case "right":
					socket.write('right');
					break;
				case "b":
					socket.write('b');
					break;
				case "a":
					socket.write('a');
					break;
				case "x":
					socket.write('x');
					break;
				case "y":
					socket.write('y')
					break;
				case "select":
					socket.write('select');
					break;
				case "start":
					socket.write('start');
					break;
				case "lb":
					socket.write('lb');
					break;
				case "rb":
					socket.write('rb');
					break;
			}
		});
});



server.listen(8067, () => {
	console.log("Server is listening on", server.address().port);
});
