ArrayList<page> pages = new ArrayList<page>();
page main = new page();
page levels = new page();
page play1 = new page();
page play2 = new page();
page pause = new page();
void setupPages(){
  main = new page(mainScreenButtons,true,false,"main");
  levels = new page(levelsScreenButtons,false,false,"levels");
  play1 = new page(play1ScreenButtons,false,false,"play1");
  play2 = new page(play2ScreenButtons,false,false,"play2");
  pause = new page(pauseScreenButtons,false,false,"pause"); 
  pages.add(main);
  pages.add(levels);
  pages.add(play1);
  pages.add(play2);
  pages.add(pause);
}
public class page{
  private ArrayList<button> pageButtons = new ArrayList<button>();
  private boolean willDrawScreen = false;
  private boolean isActive = false;
  private String specialFunctTag = ".pg";
  page(){
  }
  page(ArrayList<button> pageButtons,boolean willDrawScreen, boolean isActive, String specialFunctTag){
    this.pageButtons = pageButtons;
    this.willDrawScreen = willDrawScreen;
    this.isActive = isActive;
    this.specialFunctTag = specialFunctTag + this.specialFunctTag;
  }
  
  ArrayList<button> getPageButtons(){
    return pageButtons; 
  }
  boolean willDrawScreen(){
    return willDrawScreen;
  }
  boolean isActive(){
    return isActive; 
  }
  String specialFunctTag(){
    return specialFunctTag;
  }
  void setWillDrawScreen(boolean willDrawScreen){
    this.willDrawScreen = willDrawScreen; 
  }
  void setIsActive(boolean isActive){
    this.isActive = isActive;
  }
}
