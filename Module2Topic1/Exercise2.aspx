<%@ Page Language="C#" CodeBehind="~/Exercise2.aspx.cs" Inherits="Module1Exercise1.Exercise2" %>

<%-- Exercise 2: Exploring ASP.NET Form Controls --%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Festival Registration</title>
</head>
<body>
    <h1>Malayan Music Festival Registration</h1>
    <form runat="server">
        <%-- TODO 3.1 Create two text boxes for the first name and last name --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Text%20Boxes%20and%20Labels --%>

        <div>
            <asp:Label ID="first_name" runat="server" Text="First Name:"></asp:Label>
            <asp:TextBox ID="firstName" runat="server" ></asp:TextBox> <br />
            <asp:Label ID="last_name" runat="server" Text="Last Name:"></asp:Label>
            <asp:TextBox ID="secondName" runat="server" ></asp:TextBox>
        </div>

        <%-- Todo 3.2 Create a text box for inputting the age of the user. Make sure to set the TextMode to the proper value--%>

        <div>
            <asp:Label ID="age_label" runat="server" Text="Age:"></asp:Label>
            <asp:TextBox ID="age" TextMode="SingleLine" Columns="5" runat="server"/>
        </div>

        <%-- TODO 3.3 Create a DropDownList for the ticket type. It must have the following options: Starter, General Admissions, Gold, VIP --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=DropDownList --%>

        <div>
            <asp:Label ID="TicketList_Label" runat="server" Text="Tickets Available:"></asp:Label> <br />
            <asp:DropDownList ID="TicketList" runat="server">  
               <asp:ListItem> Starter </asp:ListItem> 
               <asp:ListItem> General Admissions </asp:ListItem>
               <asp:ListItem> Gold </asp:ListItem> 
               <asp:ListItem> VIP </asp:ListItem> 
            </asp:DropDownList>
        </div>

        <%-- TODO 3.4 Create a Radio Button List for selecing which days they are planning to attend. It must have following options: Day 1 Only, Day 2 Only, Both Day 1 and 2--%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.radiobuttonlist?view=netframework-4.8.1#:~:text=RadioButtonList%20id=%22RadioButtonList1%22 --%>

        <div>
            <asp:Label ID="ScheduledDay_Label" runat="server" Text="Pick a schedule:"></asp:Label> <br />
            <asp:RadioButtonList ID="ScheduledDayList" runat="server">
                <asp:ListItem>Day 1 Only</asp:ListItem>
                <asp:ListItem>Day 2 Only</asp:ListItem>
                <asp:ListItem>Both Day 1 and Day 2</asp:ListItem>
             </asp:RadioButtonList>
        </div>

        <%-- TODO 3.5 Create a Checkbox List for the performances they are planning to attend. List down your favorite arists for the options. --%>
        <%-- It must look something like --%>
        <%-- Which performances are you planning to attend? --%>
        <%-- <Artist Name 1> - [ ] --%>
        <%-- <Artist Name 2> - [x] --%>
        <%-- <Artist Name 3> - [ ] --%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.checkboxlist?view=netframework-4.8.1#:~:text=CheckBoxList%20id=%22checkboxlist1%22 --%>

        <div>
            <asp:Label ID="Artist_Label" runat="server" Text="Artists:"></asp:Label> <br />
            <asp:CheckBoxList id="checkboxlist1" RepeatDirection="Vertical" TextAlign="Left" runat="server">
                <asp:ListItem>EXO</asp:ListItem>
                <asp:ListItem>SEVENTEEN</asp:ListItem>
                <asp:ListItem>NCT 127</asp:ListItem>
                <asp:ListItem>NCT DREAM</asp:ListItem>
                <asp:ListItem>WAYV</asp:ListItem>
                <asp:ListItem>ATEEZ</asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <%-- TODO 3.6 Create a FileUpload for their proof of payment. It must only accept JPG and PNG files. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_file_uploading.htm#:~:text=%3Ch3%3E%20File%20Upload:%3C/h3%3E --%>

        <div>
            <asp:Label ID="Payment_Label" runat="server" Text="Artists:"></asp:Label> <br />
            <asp:FileUpload ID="Proof_Of_Payment" runat="server" />
            <asp:Button id="Button1" Text="Upload File" runat="server" Width="105px"  Accept="image/.jpg, image/.jpeg, image/.png"/>
        </div>
    </form>
</body>
</html>
