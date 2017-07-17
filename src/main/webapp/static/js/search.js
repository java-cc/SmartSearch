// function listItem() {
//     this.render = function() {
//         var li = document.createElement("li");
//         var divImage = document.createElement("figure");
//         var divImageWrap = document.createElement("div");
//         var divDesc = document.createElement("div");
//         var img = document.createElement("img");
//         var title = document.createElement("p");
//         var subtitle = document.createElement("p");
//         var anchor = document.createElement("a");
//         var imgAnchor = document.createElement("a");
//         img.src = this.src === 0 ? "https://samratcliffe.github.io/images/placeholder.jpg" : this.src;
//         anchor.href = imgAnchor.href = this.href;
//         anchor.target = imgAnchor.target = "_blank";
//         title.classList.add("item-title");
//         subtitle.classList.add("item-subtitle");
//         title.innerHTML = this.title;
//         subtitle.innerHTML = this.subtitle;
//         imgAnchor.appendChild(img);
//         divImageWrap.appendChild(imgAnchor);
//         divDesc.appendChild(title);
//         divDesc.appendChild(subtitle);
//         divDesc.appendChild(anchor);
//         divImage.appendChild(divImageWrap);
//         li.appendChild(divImage);
//         li.appendChild(divDesc);
//         return li;
//     }
// }

var search = document.getElementsByClassName("query-input")[0];

search.addEventListener("keyup", function(e) {
    var query = e.target.value;
    var results = document.getElementById("results");
    results.classList = query === "" ? "" : "active";
    searchLibrary(query);
});
search.addEventListener("focus", function(e) {
    var main = document.getElementsByClassName("main")[0];
    main.classList = "main";
});

//cancel on X click or ESC
var cancel = document.getElementsByClassName("cancel")[0];
cancel.addEventListener("click", cancelInput);

document.onkeydown = function(e) {
    e = e || window.event;
    var isEscape = false;
    if ("key" in e) {
        isEscape = e.key == "Escape";
    } else {
        isEscape = e.keyCode == 27;
    }
    if (isEscape) cancelInput();
};

function cancelInput() {
    var main = document.getElementsByClassName("main")[0];
    main.classList.add("inactive");
    search.value = '';
    // document.getElementById("results").classList = "";
    search.blur();
}

