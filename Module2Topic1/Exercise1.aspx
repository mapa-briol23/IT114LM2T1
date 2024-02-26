<%@ Page Language="C#" CodeBehind="~/Exercise1.aspx.cs" Inherits="Module1Exercise1.Exercise1" %>

<%-- Exercise 1: Exploring Basic Controls of ASP.NET WebForms--%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>


<script runat="server">

    void Play_Click(object sender, EventArgs e)
    {
        click_play.InnerHtml = "Now playing Fighting by BSS";
    }

</script>

<!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Player</title>
</head>
<body>
    <h1>Malayan Music Player</h1>
    <%-- !! IMPORTANT: Make sure to use the asp tag for each TODO  !! --%>
    <form runat="server">
        <%-- TODO 2.1 Create a label displaying the name of your favorite song and its artist (e.g. Yesterday - The Beatles)--%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_custom_controls.htm#:~:text=Label --%>
        <div>
            <asp:Label ID="song_artist" runat="server" Text="Fighting - BSS"></asp:Label>
        </div>
        <%-- TODO 2.2 Create an image that is 200px by 200x big showing the album cover of your favorite song. Make sure to set the alternative text. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Image%20Control --%>
        <div>
            <asp:Image ID="BSS_album" runat="server" ImageUrl="bss.png" Width="200" Height="200" />
        </div>
        <%-- TODO 2.3 Create three buttons with texts. "Prev", "Play", and "Next" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Button%20Controls --%>

        <div>
            <asp:Button runat="server" Text="Prev" />
            <asp:Button runat="server" OnClick="Play_Click" Text="Play" />
            <asp:Button runat="server" Text="Next" />
        </div>

        <%-- TODO 2.4 Create a span. Once the play button is pressed, the span should display "Now playing <favorite song>" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_first_example.htm#:~:text=convertoupper --%>

        <div>
            <span runat="server" ID="click_play"></span>
        </div>

        <%-- TODO 2.5 Display the current time using the template syntax <%= %> --%>
        <div>
            <%= DateTime.Now %>
        </div>
    </form>
</body>
</html>
