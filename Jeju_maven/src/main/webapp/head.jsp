<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid p-0">
		   <!-- Favicon -->
    <link rel="icon" type="image/png" sizes="192x192"  href="/android-icon-192x192.png">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link rel="stylesheet" href="assets/css/maintest.css" />

        <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-lg-5">
            <a href="main.jsp" class="navbar-brand ml-lg-3">
                <h1 class="m-0 display-5 text-uppercase text-primary"><i class="fa fa-paper-plane"></i> 제주살앙</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-lg-3" id="navbarCollapse">
                <div class="navbar-nav m-auto py-0">
                    <a href="main.jsp" class="nav-item nav-link">Home</a>
                    <a href="tour_att.jsp" class="nav-item nav-link">투어</a>
                    <a href="planner.jsp" class="nav-item nav-link active">플래너</a>
                    <a href= "diary1.jsp" class="nav-item nav-link">다이어리</a>
                    <a href= "board.jsp" class="nav-item nav-link">게시판</a>
                </div>
               <nav>
                <c:choose>
                  <c:when test="${empty loginMember}">
                     <a href="logintest.jsp" class="btn btn-primary py-2 px-4 d-none d-lg-block">login</a>
                  </c:when>
                  <c:otherwise>
                     <a href="LogoutCon" class="btn btn-primary py-2 px-4 d-none d-lg-block">logout</a>
                  </c:otherwise>
               </c:choose>
               </nav>
                </div>
               
                 </nav>
            </div>
    
   
   
</body>
</html>