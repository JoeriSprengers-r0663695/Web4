
var webSocket;

var backB = document.getElementById("backB")
backB.onclick = closeSocket;

var sendB = document.getElementById("postCommentB")
sendB.onclick = send;

window.onload = openSocket;






function openSocket() {
    webSocket = new WebSocket("ws://localhost:8080/comment");

    webSocket.onopen = function (event) {
    };

    webSocket.onmessage = function (event) {
        writeResponse(event.data);
    };

    webSocket.onclose = function (event) {
    };
}

function send()
{
    var comment =  {};

    comment.name = document.getElementById('name' ).value;

    comment.comment = document.getElementById('comment' ).value;

    comment.rating = document.getElementById( 'rating').value;

    webSocket.send(JSON.stringify(comment));
}

function closeSocket()
{
    webSocket.close();
}

function writeResponse(text)
{
    var result = JSON.parse(text);

    var commentSection = document.getElementById("commentSection");
    var commentDiv = document.createElement("div");
    var anonName = document.createTextNode("Username: " +result.name );
    var comment = document.createTextNode(( " (" + " Geeft als rating  " + result.rating + "/10) : " + result.comment));

    var elementComment = document.createElement("p");
    var elementName = document.createElement("p");

    commentDiv.id = "card";

    elementName.appendChild(anonName);
    elementComment.appendChild(comment);
    commentDiv.appendChild(anonName);
    commentDiv.appendChild(elementComment);
    commentSection.appendChild(commentDiv);

}
