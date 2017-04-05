/*List of DOM Elements*/
MyApp.wrapElements = function(){
  console.log(window.location.href)
  const regexEdit = /edit/g;
  var url = (window.location.href);

  if ( regexEdit.exec(url) !== null) {
    MyApp.Elements.commit = document.querySelector('[name="commit"]');
  }
};
