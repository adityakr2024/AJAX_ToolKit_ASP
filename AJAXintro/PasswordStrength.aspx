<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordStrength.aspx.cs" Inherits="AJAXintro.PasswordStrength" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Password Strength Checker</title>
    <style type="text/css">
        .auto-style1 {
            width: 42%;
        }
        .auto-style2 {
            width: 200px;
        }
        .BarBorder {
            border: 2px black ridge;
            width: 120px;
            height: 20px;
        }
        .Poor {
            background-color: darkred;
        }
        .Weak {
            background-color: red;
        }
        .Average {
            background-color: lightblue;
        }
        .Strong {
            background-color: lightgreen;
        }
        .VeryStrong {
            background-color: green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><b>Enter Password</b></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                    <ajaxToolkit:PasswordStrength 
                        ID="PasswordStrength1" 
                        runat="server" 
                        TargetControlID="TextBox1" 
                        MinimumLowerCaseCharacters="1" 
                        MinimumNumericCharacters="1" 
                        MinimumSymbolCharacters="1" 
                        MinimumUpperCaseCharacters="1" 
                        PreferredPasswordLength="8" 
                        PrefixText="Password Strength: " 
                        HelpStatusLabelID="Label1" 
                        TextStrengthDescriptions="Poor;Weak;Average;Strong;VeryStrong" 
                        StrengthIndicatorType="BarIndicator" 
                        DisplayPosition="RightSide" 
                        BarBorderCssClass="BarBorder" 
                        StrengthStyles="Poor;Weak;Average;Strong;VeryStrong" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
