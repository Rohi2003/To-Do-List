<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ToDo List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    

</head>
<body>
    <h2 class="text-center mb-4">To-Do List</h2>
    <div class="d-flex justify-content-center mb-4">

    <form method="POST" action="<?= site_url('todo/add') ?>" class="d-flex mb-4" style="max-width:300px; width:100%;">
        <input type="text" name="task" class="form-control form-control-sm me-2" placeholder="Enter task">
        <input type="submit" value="Add" class="btn btn-success btn-sm">
    </form>
</div>


<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 col-sm-10 col-12">
    <ul class="p-0 m-0">
        <?php foreach ($todos as $todo):?>
            <li class="border rounded mb-1 px-2 small bg-white shadow-sm"><?=htmlspecialchars($todo->task)?></li>
        <?php endforeach; ?>
    </ul>
        </div>
        </div>
        </div>

    
    <div class="text-center mt-4">
        <a href="<?= site_url('auth/login') ?>" class="btn btn-outline-danger">Logout</a>
    </div>
</body>
</html>