<!DOCTYPE html>
<html lang="ru">
<head>
    <title>PrintProduct</title>
</head>
<body>
<h1>LIBRARY</h1>
<hr>
<h4>Подробная информация </h4>
<b>Название : </b>${product.title}<br>
<b>Тип Издания: </b>${product.description}<br>
<b>Дата издания: </b>${product.publicationDate}<br>
<b>Издательсво: </b>${product.publicationHouse}<br>
<b>Автор: </b>${product.author}<br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить "/>
</form>
</body>
</html>