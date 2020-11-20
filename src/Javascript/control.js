const tmi = require('tmi.js');

//TODO add comment about how this is for tmi set up
const client = new tmi.Client({
	connection: {
		secure: true,
		reconnect: true
	},
	identity: {
		username: 'Bot_Username',
		password: 'Oauth Token'
	},
	channels: ['Your Channel name']
});

client.connect();

//From the offical tmi website. Simple command handler.
client.on('message', (channel, tags, message, self) => {
	if(self || !message.startsWith('!')) return;

	const args = message.slice(1).split(' ');
	const command = args.shift().toLowerCase();


});