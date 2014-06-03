<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MagnifyingGlass.aspx.cs" Inherits="DataBase.MagnifyingGlass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>lupa</title>
<SCRIPT LANGUAGE="JavaScript" TYPE="text/javascript">
    if (document.all) { }
    else document.captureEvents(Event.MOUSEMOVE);
    document.onmousemove = mtrack;

    function mtrack(e) {
        var x, y, x1, x2, y1, y2, dx = 0, dy = 0;
        fact = 1000 / 500;
        opp = 100;

        if (document.all) {
            x = event.x;
            y = event.y;
            dx = window.document.body.scrollLeft;
            dy = window.document.body.scrollTop;
        }
        else {
            x = e.pageX;
            y = e.pageY;
        }

        x1 = -opp + (x + dx) * fact;
        y1 = -opp + (y + dy) * fact;
        x2 = +opp + (x + dx) * fact;
        y2 = +opp + (y + dy) * fact;

        document.images.een.style.left = (x + dx) * (1 - fact);
        document.images.een.style.top = (y + dy) * (1 - fact);
        document.images.een.style.clip = "rect(" + y1 + "px," + x2 + "px," + y2 + "px," + x1 + "px)";
    }
</SCRIPT>
</head>
<body>
    <form id="form1" runat="server">

<IMG name="twee" src="mapaFaerunuZtrasami.jpg" width="500" style="position: absolute; top: 0px; left: 0px; border-style: none">
 
<IMG name="een" src="mapaFaerunuZtrasami.jpg" width="1000" ismap usemap="#kaart" style="position: absolute; top: 0px; left: 0px; clip: rect(0px, 200px, 200px, 0px) border-style: none;">
    </form>
</body>
</html>
