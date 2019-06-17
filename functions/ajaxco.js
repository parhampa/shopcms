function ajaxco(url, output) {
    if (url.length == 0) {
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById(output).innerHTML = xmlhttp.responseText;
            }
        };
        xmlhttp.open("GET", url, true);
        xmlhttp.send();
    }
}

function ajaxcomor(url, output) {
    if (url.length == 0) {
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById(output).innerHTML = document.getElementById(output).innerHTML + xmlhttp.responseText;
            }
        };
        xmlhttp.open("GET", url, true);
        xmlhttp.send();
    }
}