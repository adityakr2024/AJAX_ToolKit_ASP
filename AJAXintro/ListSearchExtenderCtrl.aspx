<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListSearchExtenderCtrl.aspx.cs" Inherits="AJAXintro.ListSearchExtenderCtrl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 200px;
        }

        .MyPromptCss{
            font-style:italic;
            font-weight:bold;
            font-family:Arial;
            color:red;
            background-color:aliceblue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table style="font-family: Arial">
                <tr>
                    <td class="auto-style1">
                        <strong>Choose Fruit</strong>
                    </td>
                    <td class="auto-style1">

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <br />
                    </td>
                    <td class="auto-style1">

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <br />
                        <asp:ListBox ID="ListBox1" runat="server" Height="147px" Width="153px">
                            <asp:ListItem>Apple</asp:ListItem>
                            <asp:ListItem>Banana</asp:ListItem>
                            <asp:ListItem>Cherry</asp:ListItem>
                            <asp:ListItem>Dates</asp:ListItem>
                            <asp:ListItem>Elderberry</asp:ListItem>
                            <asp:ListItem>Fig</asp:ListItem>
                            <asp:ListItem>Grapes</asp:ListItem>
                            <asp:ListItem>Huckleberry</asp:ListItem>
                            <asp:ListItem>Kiwi</asp:ListItem>
                            <asp:ListItem>Jackfruit</asp:ListItem>
                            <asp:ListItem>Lemon</asp:ListItem>
                        </asp:ListBox>
                        <ajaxToolkit:ListSearchExtender ID="ListSearchExtender1" runat="server" 
                            TargetControlID="ListBox1" QueryPattern="Contains" PromptCssClass="MyPromptCss"></ajaxToolkit:ListSearchExtender>
                    </td>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /> 
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
