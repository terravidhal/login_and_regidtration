<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!-- New line below to use the JSP Standard Tag Library -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- New line below to use the JSP Standard Tag Library : Form -->
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <!-- gestion ds erreurs -->
    <%@ page isErrorPage="true" %> 
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Create Dojos :</title>
            <!-- linking a cdn fontawesome icons -->
             <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
            <!-- for Bootstrap CSS -->
            <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css" />
            <!-- YOUR own local CSS -->
            <link rel="stylesheet" href="/css/style.css" />
        </head>

        <body>
            <div class="container-fluid text-center p-5" style="justify-content: center;width: 50%;">
                <h1 class="text-center text-primary" style="padding-top: 100px;">
                    Register !</h1>
               <div class="omikuji border-1">
                        <form:form action="/register_process" method="POST" modelAttribute="newUser" class="form_this">
                            <div class="form-group">
                                <form:label path="userName">User Name  : </form:label>
                                <form:errors path="userName"/>
                                <form:input class="form-control" path="userName"/>
                            </div>
                            <div class="form-group">
                                <form:label path="email">Email  : </form:label>
                                <form:errors path="email"/>
                                <form:input class="form-control" type="email" path="email"/>
                            </div>
                            <div class="form-group relative">
                                <form:label path="password">Password  : </form:label>
                                <form:errors path="password"/>
                                <form:input class="form-control" type="password" path="password"/>
                                <i style="bottom: 30px; right: 40px; z-index: 9999;" class="fas icon-password fa-eye fa-eye-slash absolute"></i>
                            </div>
                            <p style="font-size: 0.8rem;" class="text-primary">requires 8 chars, 1 upper or lower, 1 number</p>
                            <div class="form-group relative">
                                <form:label path="confirm">Confirm Password  : </form:label>
                                <form:errors path="confirm"/>
                                <form:input class="form-control" type="password" path="confirm"/>
                                <i style="bottom: 29px; right: 40px; z-index: 9999;" class="fas icon-password fa-eye fa-eye-slash absolute"></i>
                            </div>
                            <button type="submit" class="btn btn-primary my-2">Submit</button>
                        </form:form>
                </div> 
            </div>
            <div class="back st">
                <a href="/login">click to login</a>
            </div>

            <!-- link Js -->
            <script type="text/javascript" src="/js/main.js"></script>
            <!-- For any Bootstrap that uses jquery -->
            <script src="/webjars/jquery/jquery.min.js"></script>
            <!--For any Bootstrap that uses JS -->
            <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
        </body>

        </html>