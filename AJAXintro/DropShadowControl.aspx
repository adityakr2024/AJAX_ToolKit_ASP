<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropShadowControl.aspx.cs" Inherits="AJAXintro.DropShadowControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .ShadwStyle {
            -webkit-box-shadow: 0px 0px 22px 15px rgba(100,240,53,0.66);
            -moz-box-shadow: 0px 0px 22px 15px rgba(100,240,53,0.66);
            box-shadow: 0px 0px 22px 15px rgba(100,240,53,0.66);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:Panel ID="Panel1" runat="server" BackColor="#CC99FF" Height="200px" Width="400px">

                <table>
                    <tr>
                        <td>First Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtBoxFirstName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Last Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtBoxLastName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <ajaxToolkit:DropShadowExtender ID="DropShadowExtender1" TargetControlID="Panel1" runat="server"
                Opacity="0.5" Rounded="True" Width="10" />
            <br />
            <br />
            <asp:Panel ID="Panel2" runat="server" BackColor="RoyalBlue" Height="200" Width="200" CssClass="ShadwStyle" >
               
            </asp:Panel>
        </div>
    </form>
</body>
</html>
