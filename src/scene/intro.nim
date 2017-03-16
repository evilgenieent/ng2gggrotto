import
  nimgame2 / [
    nimgame,
    entity,
    scene,
    settings,
    types
  ],
  ../data,
  title


type
  IntroScene = ref object of Scene


proc init*(scene: IntroScene) =
  init Scene(scene)
  titleScene = newTitleScene()
  game.scene = titleScene #TODO remove


proc free*(scene: IntroScene) =
  discard


proc newIntroScene*(): IntroScene =
  new result, free
  init result

