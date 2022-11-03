<!DOCTYPE html>
<html lang="ru">
<head>
    <title>PrintProduct</title>
</head>
<body>
<h1>LIBRARY</h1><hr>

<#list products as product>
    <div>
        <p><b>${product.title} | </b> ${product.description}  | <a href="/product/${product.id}">Подробнее</a></p>
    </div>
</#list>
<hr>
<h3>Добавить продукцию </h3>
<form action="/product/create" method="post">
    Название : <input type="text" name="title"/><br><br>
    Тип Издания: <input type="text" name="description"/><br><br>
    Дата издания: <input type="number" name="publicationDate"/><br><br>
    Издательсво: <input type="text" name="publicationHouse"/><br><br>
    Автор: <input type="text" name="author"/><br><br>
    <input type="submit" value="Добавить"/>
</form>
</body>
</html>