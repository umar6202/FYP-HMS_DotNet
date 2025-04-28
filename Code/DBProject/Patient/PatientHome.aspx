<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMaster.Master" AutoEventWireup="true" CodeBehind="PatientHome.aspx.cs" Inherits="DBProject.PatientHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<title>Patient's Info</title>
 <style>
    h4{
        display: inline-block;
        width: 150px;
    }
</style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="background-image:url(/assets/img/backgrounds/PatientHome.jpg); background-position:center; background-size:20px; padding: 15px 0 15px 0;">
        <div style="margin: 0 auto; overflow: hidden; background: #fff; max-width: 50%; padding: 18px; border-radius: 15px; box-shadow: 0px 15px 20px rgba(0, 0, 0, 0.1);
}">
        <br />
        <h1 style="text-align: center;"><strong>Your Information</strong></h1> <!-- style="margin:37%"-->
        <br /> <br />

        <div style="display: flex; justify-content: center;">
          <div style="display: inline-block; padding: 2px; margin: 0 auto; max-width: 50%;"> <!-- style="margin-left: 70px"-->

            <h4><strong>NAME: </strong></h4>
            <asp:Label ID="PName" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br />

            <h4><strong>Contact No.: </strong></h4>
            <asp:Label ID="PPhone" runat="server"  Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br />

            <h4><strong>Birth Date: </strong></h4>
            <asp:Label ID="PBirthDate" runat="server"  Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br />

            <h4> <strong>Age: </strong></h4>
            <asp:Label ID="PatientAge" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br />

            <h4><strong>Gender:</strong></h4>
            <asp:Label ID="PGender" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br />

            <h4><strong>Address: </strong></h4>
            <asp:Label ID="PAddress" runat="server"  Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br />
        </div>
       </div>
    </div>
    </div>

</asp:Content>