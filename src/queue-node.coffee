class QueueNode
  constructor: (@config, @data) ->
  onMessage:(message, callback=->)=>
    

    callback null, sendMsg

module.exports = QueueNode
