<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <!-- Bootstrap 5.3 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f0f2f5;
            font-family: 'Arial', sans-serif;
        }
        .register-container {
            width: 400px;
            margin-top: 10%;
        }
        .card {
            border-radius: 15px;
        }
        .card-header {
            background-color: #007bff;
            color: white;
            text-align: center;
            font-size: 1.5rem;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <?php include 'navbar.php'; ?>

    <div class="container d-flex justify-content-center align-items-center">
        <div class="card register-container shadow-lg">
            <div class="card-header">
                Register
            </div>
            <div class="card-body">
                <form method="POST" action="register_action.php">
                    <?php if (!empty($_GET['error'])): ?>
                        <div class="alert alert-danger"><?php echo htmlspecialchars($_GET['error']); ?></div>
                    <?php endif; ?>
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" name="username" id="username" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" name="email" id="email" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" name="password" id="password" class="form-control" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Register</button>
                </form>
		<p class="my-3 text-center">Already have an account ? <a href="./login.php" class""> Login Here </a> </p>
            </div>
        </div>
    </div>

    <?php include './footer.php'; ?>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
