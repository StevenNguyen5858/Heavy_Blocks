void drawFrame(page p){
  screenLayout(p);
  drawPageButtons(p);
  
  p.setIsActive(true);
  p.setWillDrawScreen(false);
}
void screenLayout(page p){
 String name = p.specialFunctTag();
 //MainScreen page
 if(name.equals("main.pg")){
   basicCorners(2);
   
   defaultText(0,0,30);
   text("Heavy Blocks",sW/2-(textWidth("Heavy Blocks")/2),50);
   defaultRect(120,0);
   rect(sW/2-120,60,240,270);
 }
 
 //LevelsScreen page
 if(name.equals("levels.pg")){
   basicCorners(2);
   
   defaultText(0,0,30);
   text("Levels",sW/2-(textWidth("Levels")/2),50);
 }
 
 //PlayScreen pages
 if(name.equals("play1.pg")){
   basicCorners(lvl);
   
   defaultText(0,0,30);
   text("Level " + lvl,sW/2-(textWidth("Levels")/2),50); 
 }
 if(name.equals("play2.pg")){
   basicCorners(lvl);
   
   defaultText(0,0,30);
   text("Level " + lvl,sW/2-(textWidth("Levels")/2),50);  
 }
 if(name.equals("pause.pg")){
   fill(0,100);
   noStroke();
   rect(0,0,sW,sH);
   
   defaultText(0,0,30);
   text("Level " + lvl,sW/2-(textWidth("Levels")/2),50);  
 }
}
void drawPageButtons(page p){
  String name = p.specialFunctTag();
  if(name.equals("levels.pg")){
    for(int y = 1; y<=3; y++){
      for(int x = 1; x<=3; x++){
        tempB = new button(210,210,210,0,"tempLevels",55+100*x,100*y-20,80,80);
        tempB.setButtonTag(3*(y-1)+x);
        drawButton(tempB);
      }
    }
  }
  for(int i = 0; i<p.getPageButtons().size(); i++){
    drawButton(p.getPageButtons().get(i));
  }
}

void hitCheckPage(page p){
  if(p.isActive()){
    String name = p.specialFunctTag();
    if(name.equals("levels.pg")){
      for(int y = 1; y<=3; y++){
        for(int x = 1; x<=3; x++){
          button temp = new button(210,210,210,0,"tempLevels",55+100*x,100*y-20,80,80);
          temp.setButtonTag(x+(y-1)*3);
          toggleSelect(temp);
        }
      }
    }
    for(int i = 0; i<p.getPageButtons().size(); i++){
      button temp = p.getPageButtons().get(i);
      toggleSelect(temp); 
    }
    
  }
}