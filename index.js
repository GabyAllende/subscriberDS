var mqtt = require('mqtt')
var client = mqtt.connect('mqtt://' + process.env.brokerip + ':' + process.env.port)
    //var client = mqtt.connect('mqtt://research.upb.edu')

function ConnectEvent() {
    client.subscribe(process.env.topic)
        //client.subscribe('libros/#')
}

function MessageEvent(mytopic, message) {
    console.log(mytopic + " - " + message.toString())
}

client.on('connect', ConnectEvent)
client.on('message', MessageEvent)