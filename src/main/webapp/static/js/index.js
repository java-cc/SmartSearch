var action =1;

$('.search-button').on("click", viewSomething);

function viewSomething() {
    if ( action == 1 ) {
        $(this).parent().toggleClass('open');
        action = 2;
    } else {
        window.location="search";
        action = 1;
        var txt = document.getElementById('search_query');
        txt.value = "updated " + txt.value;


    }
}

