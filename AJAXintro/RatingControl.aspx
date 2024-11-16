<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RatingControl.aspx.cs" Inherits="AJAXintro.RatingControl" %>

<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .StarEmpty {
            background-image: url('Images/empty-star.png');
            height: 50px;
            width: 50px;
        }

        .StarFilled {
            background-image: url('Images/filled-star.png');
            height: 50px;
            width: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table style="font-family: Arial; font-weight: bold">
                        <tr>
                            <td>Rate my Website
                            </td>
                            <td>
                                <ajaxToolkit:Rating ID="Rating1" runat="server" AutoPostBack="True"
                                    EmptyStarCssClass="StarEmpty" FilledStarCssClass="StarFilled"
                                    StarCssClass="EmptyFilled" WaitingStarCssClass="EmptyFilled" OnClick="Rating1_Click">
                                </ajaxToolkit:Rating>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false" Font-Bold="false"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>

            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
