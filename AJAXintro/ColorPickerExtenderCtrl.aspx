<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ColorPickerExtenderCtrl.aspx.cs" Inherits="AJAXintro.ColorPickerExtenderCtrl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body id="WebBody" runat="server">
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table>
                <tr>
                    <td>
                        Choose Color
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="194"></asp:TextBox>
                        <ajaxToolkit:ColorPickerExtender ID="ColorPickerExtender1" TargetControlID="TextBox1" 
                            runat="server" SampleControlID="Panel1" PopupButtonID="Button1" PaletteStyle="Continuous" PopupPosition="BottomRight" />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Pick Color" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Preview
                    </td>
                    <td>
                        <asp:Panel ID="Panel1" runat="server" Height="100" Width="200"></asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Change background Color" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
