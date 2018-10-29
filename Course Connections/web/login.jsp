<%-- 
    Document   : login
    Created on : Oct 15, 2018, 4:29:45 PM
    Author     : soup
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <%@include file="head.jsp"%>
    </head>
    <body>
        <header>
            <jsp:include page="header.jsp"/>
        </header>
        <main>
            <head>
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="1072198103357-r45ic3ng7erq39ojcub38dupd9sfma2d.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>    
   
  </head>
    <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
    <script>
      function onSignIn(googleUser) {
        // Useful data for your client-side scripts:
        var profile = googleUser.getBasicProfile();
        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
        console.log('Full Name: ' + profile.getName());
        console.log("Email: " + profile.getEmail());

        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        console.log("ID Token: " + id_token);
      };
    </script>
     <a href="#" onclick="signOut();">Sign out</a>
    <script id="signout">
    function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
    });
    auth2.disconnect();
  }
</script>
  </body>
        </main>
        <footer>
            <jsp:include page="footer.jsp"/>
        </footer>
    
</html>
