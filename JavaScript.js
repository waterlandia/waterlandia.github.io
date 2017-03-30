// Please don't mess around with this! This is for smooth scrolling when you click the links on the nav.
$(document).ready(function () {
    $(".navbar a, footer a[href='#myPage'], #footer a").on('click', function (event) {
        // Makes sure this.hash has a value before overriding default behavior
        if (this.hash !== "") {
            // Prevents default anchor click behavior (No teleporting down the page)
            event.preventDefault();

            // Store the hash
            var hash = this.hash;

            // Using jQuery's animate() method to add smooth page scroll
            // Currently : 900 Milliseconds for animation
            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 900, function () {

                // Add hash to URL when done scrolling
                window.location.hash = hash;
            });
        } // End if
    });

    $(window).scroll(function () {
        $(".slideanim").each(function () {
            var pos = $(this).offset().top;

            var winTop = $(window).scrollTop();
            if (pos < winTop + 600) {
                $(this).addClass("slide");
            }
        });
    });
});