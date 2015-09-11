QueueNode = require '../src/queue-node'
describe 'OctoModel', ->
  it 'should exist', ->
    expect(QueueNode).to.exist

  describe 'when constructed', ->
    beforeEach ->
      @sut = new QueueNode

    it 'should exist', ->
      expect(@sut).to.exist

    it 'should have an onMessage function', ->
      expect(@sut.onMessage).to.exist

  describe '->onMessage', ->
    describe 'when given a message, it calls the callback containing the message', ->
      beforeEach ->
        @config = {}
        @data = {}
        @callback = sinon.spy()
        @message =
           hi : 'how are you'
        @sendMessage =
          message: @message
        @sut = new QueueNode(@config, @data)
        @sut.onMessage(@message, @callback)
      it 'should call the callback with the message', ->
        expect(@callback).to.have.been.calledWith(null)
