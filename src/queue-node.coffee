class QueueNode
  constructor: (@config, @data={}) ->
  onMessage:(message, callback=->)=>
    @data.queue ?= []
    @data.queue.push message
    console.log 'entered processMessage in queue class', message

    sendMsg =
      message: message

    callback null


module.exports = QueueNode
