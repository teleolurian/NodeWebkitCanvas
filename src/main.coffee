module.exports = (createjs) ->
  stage = new createjs.Stage 'main'

  circle = new createjs.Shape()
  circle.graphics.beginFill('red').drawCircle(0,0,10)
  circle.x = circle.y = 100
  stage.addChild circle

  stage.update()