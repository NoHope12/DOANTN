var btnBlog = document.getElementsByClassName("show-select"[0]);

  // If you care about all of the elements, you'll need to loop through the elements:
  var btnBlog = document.getElementsByClassName("show-select");

  for (var i = 0; i < btnBlog.length; ++i) {
    btnBlog[i].addEventListener("click", function () {
      // Using an if statement to check the class
      if (this.classList.contains("open")) {
        // The box that we clicked has a class of bad so let's remove it and add the good class
        this.classList.remove("open");
      } else {
        // The user obviously can't follow instructions so let's alert them of what is supposed to happen next
        this.classList.add("open");
      }
    });
  }