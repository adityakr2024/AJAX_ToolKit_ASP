<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HhtmlEditorCtrl.aspx.cs" Inherits="AJAXintro.HhtmlEditorCtrl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="300" Width="900"></asp:TextBox>
                        <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender1" runat="server" 
                            TargetControlID="TextBox1" EnableSanitization="false"></ajaxToolkit:HtmlEditorExtender>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Get Formatted Text" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Clear Text" OnClick="Button2_Click"/>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
