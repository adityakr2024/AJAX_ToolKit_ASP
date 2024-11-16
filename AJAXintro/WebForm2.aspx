<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="AJAXintro.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table style="font-family: Arial">
                        <tr>
                            <td>
                                <b>First Name</b>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <b />
                        <tr>
                            <td>
                                <b>Second Name</b>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <b />
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                            </td>
                        </tr>
                        <b />
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                            </td>
                        </tr>
                    </table>
                    </b></b></b>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <br />
            <br />

        </div>
    </form>
</body>
</html>
