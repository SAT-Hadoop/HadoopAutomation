<%-- 
    Document   : index
    Created on : Dec 1, 2014, 2:22:51 PM
    Author     : supramo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <link href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" media="all" href="css/styles.css" />
    </head>
    <body>
        <div class="container" style="font-size: 20px">
            <h2> Welcome to SAT Hadoop Cluster </h2><hr>
            <p> <c:out value="${message}"/></p>
            <form id="upload" action="app/submitjob" method="POST" enctype="multipart/form-data">

                <div class="form-group">
                    <label for="email">Email address:</label>
                    <input type="email" name="email" class="form-control" id="email"/>
                </div>
                <label for="SelectNodes">Select Number of Nodes:</label>
                <select class="form-control" name="optionnode">
                    <option value="Two">2</option>
                    <option value="Four">4</option>
                    <option value="Eight">8</option>
                    <option value="Sixteen">16</option>
                    <option value="Thirtytwo">32</option>
                </select><br>
                <label for="SelectJob">Select type of Job:</label>
                <select class="form-control" name="optionjob">
                    <option value="wordcount">WordCount</option>
                    <option value="marketbasket">Marketbasket</option>
                </select><br>
                <input type="hidden" id="MAX_FILE_SIZE" name="MAX_FILE_SIZE" value="300000" />

                <label for="fileselect">Files to upload:</label>
                <input type="file" id="fileselect" name="fileselect[]" multiple="multiple" />
                <div id="filedrag">or drop files here</div>

                <button type="submit">Submit</button>
            </form>

            <div id="messages">
                <p>Status Messages</p>
            </div>
        </div>
        <script src="js/filedrag.js"></script>
    </body>
</html>