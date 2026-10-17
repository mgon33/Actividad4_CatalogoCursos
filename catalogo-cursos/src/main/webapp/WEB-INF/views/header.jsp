<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Catálogo de Cursos</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin: 0; padding: 0; background-color: #f9f9f9; }
        header { background-color: #0056b3; color: white; padding: 20px; text-align: center; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
        footer { background-color: #343a40; color: white; text-align: center; padding: 15px; position: fixed; bottom: 0; width: 100%; }
        .container { width: 80%; margin: 40px auto; padding-bottom: 80px; }
        table { width: 100%; border-collapse: collapse; background-color: white; box-shadow: 0 4px 8px rgba(0,0,0,0.1); }
        th, td { border: 1px solid #dee2e6; padding: 12px; text-align: center; }
        th { background-color: #e9ecef; color: #495057; }
        .btn { padding: 10px 20px; background-color: #28a745; color: white; text-decoration: none; border-radius: 5px; font-weight: bold; display: inline-block; }
        .btn:hover { background-color: #218838; }
        .disponible { color: #28a745; font-weight: bold; }
        .agotado { color: #dc3545; font-weight: bold; }
        .text-center { text-align: center; }
    </style>
</head>
<body>
    <header>
        <h1>Plataforma de Formación Cuatrovientos</h1>
    </header>
    <div class="container"> <!-- Este div envuelve el contenido principal de las demás vistas -->