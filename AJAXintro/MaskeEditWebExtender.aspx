<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaskeEditWebExtender.aspx.cs" Inherits="AJAXintro.MaskeEditWebExtender" %>

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
                        Mobile No.
                    </td>

                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                        <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender1" runat="server" 
                            TargetControlID="TextBox1" Mask="9999999999" MaskType="Number" InputDirection="LeftToRight" />
                    </td>
                </tr>
                <tr>
                    <td></td>

                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>

                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>

                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>

                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
