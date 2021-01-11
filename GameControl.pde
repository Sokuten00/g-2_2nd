class GameControl {
  GameControl() {
    GameON = false;
    GameOFF = true;
    opening = new Opening();
    shooting = new Shooting();
  }
  /*定義部*/
  Opening opening;
  Shooting shooting;
  boolean GameON, GameOFF;
  int select=0;//ゲームのステージ遷移
  /**/
  void Output() {
    GameSelect();
    AudioControl();
  }

  void Mouse() {
  }
  void Key() {
  }

  void AudioControl() {
    if (GameON) {
      BGM[select].loop();
      GameON=false;
      GameOFF=false;
    }else if(GameOFF){
      BGM[select].close();
      GameOFF=false;
      GameON=false;
    }
  }
  void GameSelect() {
    switch(select) {
    case 0:
      if(!GameON && GameOFF){
        GameON=true;//スタート
      }
      opening.output();
      break;
    case 1:
      if(!GameON && GameOFF){
        GameON=true;//リスタート
      }
      shooting.output();
    default:
      opening.output();
      break;
    }
  }
}
