<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Currency Converter</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2> Product Discount Calculator</h2>
<form action="convert" method="post">
    <label>Discount Percent: </label><br/>
    <input type="text" name="Percent" placeholder="Discount Percent" value="0"/><br/>
    <label>List Price: </label><br/>
    <input type="text" name="Price" placeholder="List Price" value="0"/><br/>
    <label> Description: </label><br/>
    <input type="text" name="Description" placeholder="Product Description" /><br/>
    <input type = "submit" id = "submit" value = "Calculate Discount"/>
</form>
</body>
</html>