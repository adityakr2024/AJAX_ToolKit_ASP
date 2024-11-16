<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TextBoxWatermarkExtnderCtrl.aspx.cs" Inherits="AJAXintro.TextBoxWatermarkExtnderCtrl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .WatermarkStyle{
            color:grey;
            font-style:italic;
            font-family:Arial;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <tr>
                    <td style="font-family:Arial; font-weight:bold" >
                        First Name
                    </td>
                    <td>
                        <asp:TextBox ID="txtBoxFirstName" runat="server"></asp:TextBox>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1"  runat="server" TargetControlID="txtBoxFirstName" WatermarkText="Enter First Name" WatermarkCssClass="WatermarkStyle" />
                    </td>
                </tr>
                <tr>
                    <td style="font-family:Arial; font-weight:bold">
                        Last Name
                    </td>
                    <td>
                        <asp:TextBox ID="txtBoxLastName" runat="server"></asp:TextBox>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" TargetControlID="txtBoxLastName" WatermarkText="Enter Last Name" WatermarkCssClass="WatermarkStyle" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>