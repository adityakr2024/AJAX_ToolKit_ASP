<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HoverMenuCtrl.aspx.cs" Inherits="AJAXintro.HoverMenuCtrl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:Label ID="Label1" runat="server" Text="Show the Panel (hover)"></asp:Label>
            <ajaxToolkit:HoverMenuExtender ID="HoverMenuExtender1" runat="server" PopupControlID="Panel1" 
                TargetControlID="Label1" PopupPosition="Bottom"></ajaxToolkit:HoverMenuExtender>
            <asp:Panel ID="Panel1" runat="server" Height="100px" Width="140px" BackColor="#FFCCFF" >
                <asp:Label ID="Label2" runat="server" Text="Contact"></asp:Label> <br />
                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label><br />
                <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label><br />
                <asp:Label ID="Label5" runat="server" Text="Phone"></asp:Label><br />
                <asp:Label ID="Label6" runat="server" Text="Country"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                <asp:Label ID="Label7" runat="server" Text="Fax"></asp:Label><br />
                <asp:Label ID="Label8" runat="server" Text="Mail"></asp:Label><br />
                <asp:Label ID="Label9" runat="server" Text="Courier"></asp:Label><br />
                <asp:Label ID="Label10" runat="server" Text="Parcel"></asp:Label><br />
            </asp:Panel>
            <ajaxToolkit:HoverMenuExtender ID="HoverMenuExtender2" runat="server" PopupControlID="Panel2" 
                TargetControlID="Label2" PopupPosition="Right" OffsetX="10"></ajaxToolkit:HoverMenuExtender>
        </div>
    </form>
</body>
</html>
