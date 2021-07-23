<%@ page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/style.css" />
    <title>Document</title>
  </head>
  <body>
    <div class="wrapper">
      <header class="header d-flex">
        <div class="brand d-flex">
          <img src="images/favicon.ico" alt="" />
          <h1>Egerton University Patient Registry</h1>
        </div>
      </header>
      <main class="main">
        <div class="main-menu">
          <%@include file="patials/navigation.jsp"%>
        </div>
        <div class="main-content">
          <div class="title">
            <h2>Patient Diagnosis</h2>
          </div>
          <%
            String message = request.getParameter("message");
            String messageType = request.getParameter("messageType");

            if( message != null) {
          %>
          <jsp:include page="patials/message-alert.jsp?message=<%= message%>&type=<%= messageType%>>" />
          <% } %>
          <div class="diagnose">
            <div class="profile-card">
              <table class="table">
                <caption>
                  Patient Info
                </caption>
                <tbody>
                  <tr>
                    <th>ID</th>
                    <td>24</td>
                  </tr>
                  <tr>
                    <th>Name</th>
                    <td>Wachiye Siranjofu</td>
                  </tr>
                  <tr>
                    <th>Age</th>
                    <td>24</td>
                  </tr>
                  <tr>
                    <th>Weight(Kg)</th>
                    <td>75.30</td>
                  </tr>
                  <tr>
                    <th>Type</th>
                    <td>STUDENT</td>
                  </tr>
                  <tr>
                    <th>Allergies</th>
                    <td>
                      <p>
                        Lorem ipsum dolor, sit amet consectetur adipisicing
                        elit. Minima quas, earum dolores pariatur aspernatur
                        natus porro adipisci in quos tempore?
                      </p>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="content">
              <div class="action diagnose-action">
                <button id="toggle-history" value="history">
                  Medical History
                </button>
                <button id="toggle-diagnose" value="diagnose">Diagnose</button>
                <button id="toggle-test-request" value="test-request">Lab Test Request</button>
              </div>
              <div class="content-area">
                <div id="history" class="active">
                    <h5>Past Medical History</h5>
                  <table class="table">
                    <thead>
                      <tr>
                        <th>ID</th>
                        <th>Symptoms</th>
                        <th>Test ID</th>
                        <th>Test Result</th>
                        <th>Diagnosis</th>
                        <th>Remarks</th>
                        <th>Added On</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>headaches, fever</td>
                        <td>TEST#123</td>
                        <td>+VE</td>
                        <td>Malaria</td>
                        <td>Patient is suffering from Malaria</td>
                        <td>12/09/2021</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div id="diagnose">
                    <h5>Diagnosis Entry</h5>
                  <form
                    action="./pages/diagnoses"
                    method="post"
                    name="add-diagnosis"
                  >
                    <p class="message"></p>
                    <div class="group">
                        <label for="symptoms">Symptoms</label>
                        <textarea
                          id="symptoms"
                          name="symptoms"
                          placeholder="Observable and descriptive symptoms"
                          rows="5"
                        ></textarea>
                      </div>

                    <div class="group" id="testType">
                      <label for="testid">Test ID</label>
                      <select name="testid" id="testid">
                        <option value="" selected >Select Test ID</option>
                        <option value="id_1">1D_1</option>
                        <option value="id_2">1D_2</option>
                    </select>
                    </div>
                    <div class="group">
                      <label for="testResults">Test Results</label>
                      <input
                        type="text"
                        id="fullName"
                        name="fullName"
                        placeholder="Full Name"
                      />
                    </div>
                    <div class="group">
                      <label for="diagnosis">Final Diagnosis</label>
                      <input
                        type="text"
                        id="diagnosis"
                        name="diagnosis"
                        placeholder="Final Diagnosis"
                      />
                    </div>
                    <div class="group">
                      <label for="remarks">Remarks/Comment</label>
                      <textarea
                        id="remarks"
                        name="remarks"
                        placeholder="Final Remarks/Comment"
                        rows="5"
                      ></textarea>
                    </div>
                    <button type="submit">Submit</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </main>
      <footer class="footer">
        <p>Copyright &copy; 2021</p>
      </footer>
    </div>
  </body>
  <script type="text/javascript">
    var historyDiv = document.getElementById("history");
    var diagnoseDiv = document.getElementById("diagnose");
    var toggleHist = document.getElementById("toggle-history");
    var toggleDiag = document.getElementById("toggle-diagnose");

    diagnoseDiv.style.display = "none";

    toggleHist.addEventListener("click", (evt) => {
      toggleDisplay(evt.target.value);
    });

    toggleDiag.addEventListener("click", (evt) => {
      toggleDisplay(evt.target.value);
    });

    function toggleDisplay(targetId) {
      historyDiv.style.display = "none";
      diagnoseDiv.style.display = "none";

      if (targetId === "history") {
        historyDiv.style.display = "block";
      } else {
        diagnoseDiv.style.display = "block";
      }
    }
  </script>
</html>
