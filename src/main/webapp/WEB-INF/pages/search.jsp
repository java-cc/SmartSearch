<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Search</title>
    <style>
        @font-face {
            font-family: 'CircularBook';
            src: url('https://samratcliffe.github.io/fonts/circular-book.woff') format('woff2'),
            url('https://samratcliffe.github.io/fonts/circular-book.ttf')  format('truetype');
        }
        @font-face {
            font-family: 'CircularBlack';
            src: url('https://samratcliffe.github.io/fonts/circular-black.woff') format('woff2'),
            url('https://samratcliffe.github.io/fonts/circular-black.ttf')  format('truetype');
        }
        @font-face {
            font-family: 'CircularLight';
            src: url('https://samratcliffe.github.io/fonts/circular-light.woff') format('woff2'),
            url('https://samratcliffe.github.io/fonts/circular-light.ttf')  format('truetype');
        }
    </style>



    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/search.css">



</head>

<body>

<div class="main inactive">
    <div class="bg-main"></div>
    <section class="search">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <a onclick="document.forms['logoutForm'].submit()">Logout</a>

        <div class="search-box">

            <div class="introduction-text">
                <h1>Search over the most popular stores.</h1>
                <!--         <p>Know what you want to listen to? Just search and hit play.</p>-->
            </div>
            <div class="cancel"></div>
            <form class="search-form">

                <div class="query-box">
                    <input class="query-input" type="text" autocomplete="off" name="search" placeholder="Search">
                    <div id="results">
                    </div>
                </div>
            </form>




        </div>
    </section>




</div>

<script src="${pageContext.request.contextPath}/static/js/search.js"></script>


</body>
</html>
