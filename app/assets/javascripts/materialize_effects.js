function setMaterialize(element, component, op) {
   var elems = document.querySelectorAll(element);
   var instances = M[component].init(elems, op);
}

document.addEventListener('DOMContentLoaded', function() {
   setMaterialize('.slider', 'Slider', {});
   setMaterialize('.sidenav', 'Sidenav', {});
}); 
 
document.addEventListener('turbolinks:load', function() {
 M.AutoInit();
});
