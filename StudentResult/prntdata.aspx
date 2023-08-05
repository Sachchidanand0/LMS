<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prntdata.aspx.cs" Inherits="prntdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Print Result</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous" />
</head>
<body onload="javascript: window.print();">
    <form id="form1" runat="server">
          <div class="row mt-2 mb-4" id="data-section">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <table class="table table-bordered table-warning">
                        <tr>
                            <td><h5>D.D.U University</h5></td>
                              <td><span class="h5">Course Name:</span><span class="h6">BCA</span></td>
                             <td><span class="h5">Department:</span><span class="h6">Computer Science</span></td>
                             <td><span class="h5">Student ID:</span><span runat="server" class="h6" id="sid"></span></td>
                        </tr>
                               <tr>
                            <td><span class="h5" colspan="2">Student Name: </span><span runat="server" class="h6 text-danger" id="Stname"></span></td>
                              <td><span class="h5">Father Name: </span><span runat="server" class="h6 text-danger" id="Fname"></span></td>
                             <td><span class="h5" colspan="3">Gender: </span><span runat="server" class="h6 text-danger" id="gender">Male</span></td>
                             
                        </tr>
                    </table>
                </div>
                <div class="col-md-1"></div>
            </div>
        <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <table class="table table-bordered table-primary">
                    <tr>
                        <th>Subject</th>
                        <th>Type</th>
                        <th>Full marks</th>
                        <th>Passing Marks</th>
                        <th>Obtained Marks</th>
                    </tr>
                       <tr>
                        <td>Computer Basic</td>
                        <td>Theory / Practical</td>
                        <td>100</td>
                        <td>33</td>
                        <td><span id="Cbmarks" runat="server">xxx</span></td>
                    </tr>
                            <tr>
                        <td>C Programming</td>
                        <td>Theory / Practical</td>
                        <td>100</td>
                        <td>33</td>
                        <td><span id="ClMarks" runat="server">xxx</span></td>
                    </tr>
                            <tr>
                        <td>Function English</td>
                        <td>Theory / Practical</td>
                        <td>100</td>
                        <td>33</td>
                        <td><span id="FeMarks" runat="server">xxx</span></td>
                    </tr>
                            <tr>
                        <td>Mathematics</td>
                        <td>Theory / Practical</td>
                        <td>100</td>
                        <td>33</td>
                        <td><span id="mMarks" runat="server">xxx</span></td>
                    </tr>
                          <tr>
                        <td>Total: <span class="h6 text-primary">500</span></td>
                        <td colspan="2">Marks Obtained: <span class="h5 text-danger" id="totalObtainMarks" runat="server">Obt</span></td>
                        <td><span class="h6">Percentage: </span><span id="percentage" runat="server" class="h6 text-danger">%%%</span></td>
                        <td><span class="h6 text-primary"></span> <span id="decision" runat="server" class="h6 text-primary">Des</span></td>
                      </tr>
                </table>
                </div>
                <div class="col-md-1"></div>
                   
            </div>
    </form>
</body>
</html>
