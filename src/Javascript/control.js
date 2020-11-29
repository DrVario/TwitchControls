const tmi = require('tmi.js');
const net = require('net');


//TODO add comment about how this is for tmi set up

const server = net.createServer(conn => {
	conn.write("Connection Succesful\n")

	const client = new tmi.Client({
		connection: {
			secure: true,
			reconnect: true
		},
		channels: ['DrVario23']
	});
		

	client.connect();

//From the offical tmi website. Simple command handler.
client.on('message', (channel, tags, message, self) => {
	if(self || !message.startsWith('!')) return;
	const args = message.slice(1).split(' ');
	const command = args.shift().toLowerCase();
	console.log(command);
	switch(command) {
		case "up":
			conn.write('up');
			console.log('up sent')
			break;
		case "down":
			conn.write('down');
			console.log('down sent')
			break;
		case "left":
			conn.write('left');
			console.log('left sent')
			break;
		case "right":
			conn.write('right');
			console.log('right sent')
			break;
		case "b":
			conn.write('b');
			console.log('b sent')
			break;
		case "a":
			conn.write('a');
			console.log('a sent')
			break;
		case "x":
			conn.write('x');
			console.log('x sent')
			break;
		case "y":
			conn.write('y')
			console.log('y sent')
			break;
		case "select":
			conn.write('select');
			console.log('select sent')
			break;
		case "start":
			conn.write('start');
			console.log('start sent')
			break;
		case "l":
			conn.write('lb');
			console.log('l sent')
			break;
		case "r":
			conn.write('rb');
			console.log('r sent')
			break;
	}
});

	conn.on('data', (data) => {
		console.log(data.toString());
		conn.write("Received data")
	});
	conn.on('error', (error) => {
		console.log(error.toString());
	});
});

server.listen(8067);
