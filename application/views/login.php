<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <style>
        body{
            background-color:#f8f9fa;
            height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
        }
        .login-box{
            background:#ffffff;
            padding:30px;
            border-radius:10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width:100%;
            max-width:400px;
        }
        </style>

</head>
<body>
    <div class="login-box">
        <h2 class="text-center mb-4">Login</h2>
        <form method="post">
            <div class="mb-3">
                <input type="email" name="email" placeholder="Email" required>
            </div>
            <div class="mb-3">
                <input type="password" name="password" placeholder="Password" required>
            </div>
            <input type="submit" value="Login" class="btn btn-primary w-100">
        </form>
    </div>
</body>
</html>