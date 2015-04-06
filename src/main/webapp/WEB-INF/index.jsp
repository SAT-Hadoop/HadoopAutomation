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
        <link rel="stylesheet" type="text/css" media="all" href="/css/styles.css" />
    </head>
    <body>
        <div class="container" style="font-size: 20px">
            <!--<p>Authenticated user id is : <%= request.getRemoteUser() %></p>
    <P>User ID is available via the following variables : <p>
    <p>request.getRemoteUser()  : <%= request.getRemoteUser() %> <p>
    <p>request.getUserPrincipal() : <%= request.getUserPrincipal() %> <p></p>-->
            <p><b>Click here to Logout </b> <a href="https://mydev107.iit.edu/cas/logout"> Logout!!</a></p>
            <h2> Welcome to SAT Hadoop Cluster </h2><hr>
            <p> <c:out value="${message}"/></p>
            <form id="upload" action="${pageContext.request.contextPath}/app/submitjob" method="POST">

                <!--<div class="form-group">
                    <label for="email">Email address:</label>
                    <input type="email" name="email" class="form-control" id="email"/>
                </div>-->
                <label for="SelectNodes">Select Number of Nodes:</label>
                <select class="form-control" name="optionnode">
                    <option value="2">2</option>
                    <option value="4">4</option>
                    <option value="8">8</option>
                    <option value="16">16</option>
                    <option value="32">32</option>
                </select><br>
                <label for="SelectJob">Select type of Job:</label>
                <select class="form-control" name="optionjob">
                    <option value="wordcount">WordCount</option>
                    <option value="marketbasket">Marketbasket</option>
                </select><br>
                Available data sets: <select name="datasets">
                    <c:forEach items="${datasets}" var="file">
                        <option value="${file}">
                            ${file}
                        </option>
                    </c:forEach>
                </select>
                <button type="submit">Submit</button>
            </form>

            <hr>
            <p> Use the form to upload new files </p>
            <form id="upload" action="${pageContext.request.contextPath}/app/uploadfile" method="POST" enctype="multipart/form-data">
                <input type="hidden" id="MAX_FILE_SIZE" name="MAX_FILE_SIZE" value="300000" />

                <label for="fileselect">Files to upload:</label>
                <input type="file" id="fileselect" name="fileName" multiple="multiple"/>
                <div id="filedrag">or drop files here</div>

                <button type="submit">Submit</button>

            </form>
            <div id="messages">
                <p>Status Messages</p>
            </div>
            <hr>
            <p> Use the form to delete files </p>
            <form method="POST" action="${pageContext.request.contextPath}/app/deletefile">
                Available data sets: <select name="filetodelete">
                    <c:forEach items="${datasets}" var="file">
                        <option value="${file}">
                            ${file}
                        </option>
                    </c:forEach>
                </select>
                <input type="submit" value="Delete">
            </form>
                
                <hr>
            <p> Use the form to download files </p>
            <form method="GET" action="${pageContext.request.contextPath}/app/downloadfile">
                Available data sets: <select name="filetodownload">
                    <c:forEach items="${datasets}" var="file">
                        <option value="${file}">
                            ${file}
                        </option>
                    </c:forEach>
                </select>
                <input type="submit" value="Download">
            </form>
            
        </div>



        <script src="/js/filedrag.js"></script>
    </body>
</html>