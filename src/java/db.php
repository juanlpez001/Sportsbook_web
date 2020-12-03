$conn = mysqli_connect("localhost","root","","comentarios");
if ($conn->connect_error) {
    die("Fallo en la conexión: " . $conn->connect_error);
}