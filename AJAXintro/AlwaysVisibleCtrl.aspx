<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlwaysVisibleCtrl.aspx.cs" Inherits="AJAXintro.AlwaysVisibleCtrl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:Image ID="Image1" ImageUrl="~/Images/microsoftlogo.png" Height="200" Width="220" runat="server" />
                        <ajaxToolkit:AlwaysVisibleControlExtender ID="AlwaysVisibleExtender1" runat="server"
                            TargetControlID="Image1"
                            HorizontalSide="Center"
                            VerticalSide="Middle"
                            HorizontalOffset="10"
                            VerticalOffset="10"></ajaxToolkit:AlwaysVisibleControlExtender>
                    </asp:Panel>

                    <asp:Panel ID="Panel2" runat="server">
                        <asp:Image ID="Image2" ImageUrl="~/Images/clock-icon.png" Height="100" Width="100" runat="server" />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000"></asp:Timer>
                        <ajaxToolkit:AlwaysVisibleControlExtender ID="AlwaysVisibleControlExtender2" runat="server"
                            TargetControlID="Panel2"
                            VerticalSide="Top" HorizontalSide="Right" UseAnimation="True"></ajaxToolkit:AlwaysVisibleControlExtender>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>

            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
            <p>This is example</p>
        </div>
    </form>
</body>
</html>
