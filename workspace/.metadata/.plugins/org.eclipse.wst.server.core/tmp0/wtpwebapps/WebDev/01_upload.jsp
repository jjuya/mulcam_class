<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0" data-genuitec-path="/WebDev/WebContent/01_upload.jsp">

<form action="/file/upload.do" method="post" enctype="multipart/form-data" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0" data-genuitec-path="/WebDev/WebContent/01_upload.jsp">
name : <input type="text" name="name" /><br>
title : <input type="text" name="title" /><br>
name : <input type="file" name="uploadFile" /><br>

<input type="submit" value="submit" />

</form>

</body>
</html>