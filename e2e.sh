#!/bin/bash

sleep 10

check=$(curl -X GET 'http://localhost/health'  || exit 1 )

health='''
<!DOCTYPE html>
<html lang=\"en\">
    <head>
        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">
        <meta charset=\"utf-8\" />
        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\" />
        <meta name=\"description\" content=\"\" />
        <meta name=\"author\" content=\"\" />
        <title>Crossy_Road</title>
        <link rel=\"icon\" type=\"image/x-icon\" href=\"assets/favicon.ico\" />
        <!-- Font Awesome icons (free version)-->
        <script src=\"https://use.fontawesome.com/releases/v6.1.0/js/all.js\" crossorigin=\"anonymous\"></script>
        <!-- Google fonts-->
        <link href=\"https://fonts.googleapis.com/css?family=Varela+Round\" rel=\"stylesheet\" />
        <link href=\"https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i\" rel=\"stylesheet\" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href=\"/static/css/styles.css\" rel=\"stylesheet\" />
    </head>
    <body>
        <!-- Masthead-->
        <header class=\"masthead\">
            <div class=\"container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center\">
                    <div class=\"text-center\">
                        <h1 class=\"mx-auto my-0 text-uppercase\">HEALTH</h1>
                            
                                <h4 class=\"text-white-50 mx-auto mt-2 mb-5\"> OK : server is up and run </h4>
                            
                        <form class=\"form-signup\" action=\"/\" method=\"GET\">
                            <div class=\"col-auto\"><button class=\"btn btn-primary\" id=\"submitButton\" type=\"submit\">Return</button></div>
                        </form>                    
                    </div>
            </div>
        </header>





       
        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"></script>
        <!-- Core theme JS-->
        <script src=\"/static/js/scripts.js\"></script>

        <script src=\"https://cdn.startbootstrap.com/sb-forms-latest.js\"></script>
        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>
        <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>
        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>
    </body>
</html>
'''

if [[ $(echo $check) != $(echo $health) ]];then
    exit 1
fi




