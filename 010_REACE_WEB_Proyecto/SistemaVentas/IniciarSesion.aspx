﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" Inherits="SistemaVentas.IniciarSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Assets/Plugins/bootstrap.4.5.2/bootstrap.min.css" rel="stylesheet" />
    <link href="css/IniciarSesion/Styles.css" rel="stylesheet" />
    <link href="Assets/Plugins/Simple_Line_Icons/simple-line-icons.min.css" rel="stylesheet" />
    <link href="Assets/Plugins/bootstrap-icons-1.2.2/font/bootstrap-icons.css" rel="stylesheet" />
    <script src="Assets/Plugins/jquery/jquery.3.5.1.min.js"></script>
    <script src="Assets/Plugins/bootstrap.4.5.2/bootstrap.min.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style>
        body {
            background-color: #f0f0f0;
        }
        .registration-form {
            background: linear-gradient(135deg, #71b7e6, #4CAF50);
            padding: 50px 0;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-icon img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-control {
            border-radius: 20px;
            padding: 10px 20px;
        }
        .create-account {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 10px 20px;
            border-radius: 20px;
            cursor: pointer;
        }
        .create-account:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="registration-form">
        <form>
            <div class="form-icon">
                <img src="https://i.ibb.co/w6f2ZFM/recicladora-logo.png" alt="Logo">
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" id="username" placeholder="Usuario" value=""/>
            </div>
            <div class="form-group">
                <input type="password" class="form-control item" id="password" placeholder="Contraseña" value=""/>
            </div>
            <div class="form-group">
                <button id="btnIniciarSesion" type="button" class="btn btn-block create-account">Iniciar Sesión</button>
            </div>
            <div class="row mt-2">
                <div class="col-sm-12 text-center">
                    <p class="mb-0">Todos los derechos reservados ©<a id="publicidad" href="https://ouo.io/RK1tRH" target="_blank" class="ml-1"><b>UrcuyoCreations - Click Aqui</b></a></p>
                </div>
            </div>
        </form>
    </div>
    <script src="Controlador/IniciarSesion/IniciarSesion.js"></script>
    <script src="Controlador/Utilidades.js"></script>
    <script src="Assets/Plugins/loadingoverlay/loadingoverlay.js"></script>

    <link href="Assets/Plugins/sweetalert2/sweetalert.css" rel="stylesheet" />
    <script src="Assets/Plugins/sweetalert2/sweetalert.js"></script>
</body>
</html>