document.addEventListener('turbolinks:load', function() {
 M.AutoInit();
 $('.sidenav').sidenav();
 $('.slider').slider();
 $(".dropdown-trigger").dropdown({
    inDuration: 300,
    outDuration: 225,
    constrainWidth: false, // Does not change width of dropdown to that of the activator
    hover: true, // Activate on click
    alignment: 'left', // Aligns dropdown to left or right edge (works with constrain_width)
    gutter: 0, // Spacing from edge
    belowOrigin: false, // Displays dropdown below the button
    stopPropagation: false // Stops event propagation
  });
});

document.addEventListener('turbolinks:before-visit', function() {
  elem = document.querySelector('.sidenav');
  instance = M.Sidenav.getInstance(elem);
  instance.destroy()
});