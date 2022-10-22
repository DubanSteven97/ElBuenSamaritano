<!DOCTYPE html>
<html>

<head>
    <title>
        ElBuenSamaritano
    </title>
    <link rel="stylesheet" type="text/css" href="Assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="Assets/css/styles.css">
    <script type="text/javascript" href="Assets/js/bootstrap.min.js"></script>
    <script type="text/javascript" href="Assets/js/jquery-3.6.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <meta charset="utf-8">
</head>

<body>
    <main class="main">
        <div class="container">
            <div class="row">
                <div class="col">
                    <h2>Registro</h2><br>
                    <form class="row g-3" name="formulario" action="php/generacion.php" method="post" required>
                        <div class="col-12">
                            <label for="numero_identificacion" class="form-label">Número de identificación</label>
                            <input type="number" class="form-control" id="numero_identificacion"
                                name="numero_identificacion" pattern="^[0-9]+" required>
                            <label for="nombres" class="form-label">Nombres</label>
                            <input type="text" class="form-control" id="nombres" name="nombres" required>
                            <label for="apellidos" class="form-label">Apellidos</label>
                            <input type="text" class="form-control" id="apellidos" name="apellidos" required>
                            <label for="correo" class="form-label">Correo electrónico</label>
                            <input type="email" class="form-control" id="correo" name="correo"
                                aria-describedby="emailHelp" required>
                            <div id="emailHelp" class="form-text">Nunca compartiremos su correo electrónico con nadie
                                más.</div>
                            <label for="inputPassword5" class="form-label">Contraseña</label>
                            <input type="password" id="inputPassword5" class="form-control"
                                aria-describedby="passwordHelpBlock">
                            <div id="passwordHelpBlock" class="form-text">
                                Tu contraseña debe tener entre 8 y 20 caracteres, contener letras y números, y no debe
                                contener espacios, caracteres especiales ni emoji.
                            </div>
                        </div>

                        <div class="col-12">
                            <center> <button type="submit" class="btn btn-primary" id="enviar"
                                    name="enviar">Enviar</button></center>
                        </div>
                    </form>
                </div>
            </div>
        </div><br>
    </main>
</body>

</html>