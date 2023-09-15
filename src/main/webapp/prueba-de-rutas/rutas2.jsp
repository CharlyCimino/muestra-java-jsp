<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/estilo.css"/> <%-- Observar la ruta para cargar el CSS --%>
        <title>Rutas en un JSP (2)</title>
    </head>

    <body>
        <h1>Ejemplo de funcionamiento de las rutas en un JSP</h1>
        <h2>P�gina 13 de la PPT <a href="https://charlycimino.com/recursos/ppt/Java/Java%20Web%20JSP" target="_blank">"Java Web: JSP"</a></h2>
        <hr/>
        <p>�Cu�l de estos enlaces llevar� a la p�gina principal?</p>
        <ol>
            <li><a href="/">/</a></li>
            <li><a href="/index">/index</a></li>
            <li><a href="/index.html">/index.html</a></li>
            <li><a href="index">index</a></li>
            <li><a href="index.html">index.html</a></li>
            <li><a href="../index">../index</a></li>
            <li class="resaltado"><a href="../index.html">../index.html</a></li>
        </ol>
        <hr/>
        <p>�Cu�l de estos enlaces llevar� al .gif?</p>
        <ol>
            
            <li><a href="/baile.gif">/baile.gif</a></li>
            <li><a href="baile.gif">baile.gif</a></li>
            <li><a href="/img/baile.gif">/img/baile.gif</a></li>
            <li><a href="img/baile.gif">img/baile.gif</a></li>
            <li class="resaltado"><a href="../img/baile.gif">../img/baile.gif</a></li>
        </ol>
    </body>
</html>
