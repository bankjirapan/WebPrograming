 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.10.0/css/lightbox.css" />
    </head>
    <body>
        <jsp:include page="Header.jsp?title=Select Backgroud ::" />
        <div class="container">

            <h1>Select color Theme</h1>


            <form action="ChooseBackgroud" method="post">
                <!--                <input type="radio" class="form-control" name="bgColor" value="Dark">Dark
                                <input type="radio" class="form-control" name="bgColor" value="Blue">Blue 
                                <input type="radio" class="form-control" name="bgColor" value="Sky">Sky -->
                <div class="form-group">
                    <label for="exampleSelect1">Example select</label>
                    <select class="form-control" id="exampleSelect1">
                        <option value="Red">RED</option>
                        <option value="Blue">BLUE</option>
                        <option value="Green">GREEN</option>
             
                    </select>
                </div>


                <input class="btn btn-info" type="submit" value="Change">

            </form>
        </div>
    </div>
</body>
</html>
