using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Desktop.Models;
using System.Data;

namespace Desktop.Controllers;

public class KursController : Controller
{
    
    public IActionResult Index()
    {
        var kurs= new Course();
        kurs.Id=1;
        kurs.Title="Aspnet core";
        kurs.Description="MVC çok güzel";

        return View(kurs);
    }
    public IActionResult List()
    {
        new Course() {Id=1, Title="C#", Description="OOP"},
        new Course() {Id=2, Title="Java", Description="Temel kavramlar"},
        new Course() {Id=3, Title="Javascript", Description="Metot oluşturma"}
        return View();
    }
    

}






@model List<Course>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    @foreach(var kurs in Model)
    {
    <p>id: @kurs.Id</p>
    <p>title: @kurs.Title</p>
    <p>description: @kurs.Description</p>
    }
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <p>id: @Model.Id</p>
        <p>title: @Model.Title</p>
        <p>description: @Model.Description</p>
    


</body>
</html>
