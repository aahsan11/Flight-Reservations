<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title></title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">

        <!-- put your override styles here - AFTER you include Bootstrap -->
        <link href="style-mobile.css" rel="stylesheet">

    </head>
    <style>
        /* override Bootstrap's container */
        .container-fluid {
            padding-right:0;
            padding-left:0;
            margin-right:auto;
            margin-left:auto
         }
    </style>
    <body>

        <div class="container-fluid">
            This text hits the left side of the viewport.
        </div>

    </body>
</html>