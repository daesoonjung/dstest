<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
var moveLocation = function(path) {
    var link = path;
    if (path == "")
        return;
    $("#iframeContents").attr("src", link);
}

var goMain = function() {
	//$("#iframeContents").attr("src", link);
}
</script>
