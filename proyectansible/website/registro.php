<?php
// Conectar a la base de datos
$host = "localhost"; 
$username = "root"; 
$password = " "; 
$database = "test_db"; 

$conn = new mysqli($host, $username, $password, $database);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Procesar los datos del formulario cuando se envía
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST["name"];
    $user_name = $_POST["user_name"];
    $password = $_POST["password"];

    // Escapar los datos para prevenir inyecciones SQL
    $name = $conn->real_escape_string($name);
    $user_name = $conn->real_escape_string($user_name);
    $password = $conn->real_escape_string($password);
   

    // Hash de la contraseña (mejora la seguridad)
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    $sql = "INSERT INTO users (name, user_name, password) VALUES ('$name', '$user_name', '$hashed_password')";

    if ($conn->query($sql) === TRUE) {
        // Redireccionar a la página principal
        header("Location: home.html"); 
        exit; 
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    // Cerrar la conexión 
    $conn->close();
}
?>