<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ToggleButtonConrol.aspx.cs" Inherits="AJAXintro.ToggleButtonConrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 114px;
        }

        .auto-style2 {
            width: 114px;
            height: 128px;
        }

        .auto-style3 {
            height: 128px;
            width: 199px;
        }

        .auto-style4 {
            width: 199px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table style="font-family: Arial">
                        <tr>
                            <td class="auto-style2">Click on Bulb
                            </td>
                            <td class="auto-style3">
                                <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="true" />
                                <ajaxToolkit:ToggleButtonExtender ID="ToggleButtonExtender1" TargetControlID="CheckBox1" runat="server"
                                    CheckedImageUrl="~/Images/bulbOn.png" UncheckedImageUrl="~/Images/bulbOff.png" ImageHeight="87" ImageWidth="50" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <br />
                                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                            </td>
                            <td class="auto-style4"></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <br />
                                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
