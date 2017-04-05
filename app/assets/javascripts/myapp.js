/*
 * NameSpace definition
 * */
const MyApp = {
  Elements   : {},
  Actions    : {},
  Initialize : function(){
    MyApp.wrapElements();
    MyApp.bindEvents();
  }
};


const regexEdit = /edit/g;
var url = (window.location.href);

if ( regexEdit.exec(url) !== null) {
  window.addEventListener('load',  MyApp.Initialize, false);

}
