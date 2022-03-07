<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Account Registration</title>
</head>
<body>
<div style="text-align: center;">
    <h1>Account Registration</h1>
    <h2>

    </h2>
</div>
<div style="margin: 0 auto; display: table;">
    <form action="/userData" method="post">
        <table style="border: solid;">
            <caption>
                <h2>
                    Please fill in the form below
                </h2>
            </caption>
            <tr>
                <th>First Name: </th>
                <td>
                    <input type="text" name="name" size="45" required/>
                </td>
            </tr>
            <tr>
                <th>Surname: </th>
                <td>
                    <input type="text" name="surname" size="45" required/>
                </td>
            </tr>
            <tr>
                <th>Email: </th>
                <td>
                    <input type="email" name="email" size="45" required/>
                </td>
            </tr>
            <tr>
                <th>PPS: </th>
                    <td>
                        <input type="text" name="PPS" size="45" required/>
                    </td>
            </tr>
            <tr>
                <th>Address: </th>
                <td>
                    <input type="text" name="address" size="45" required/>
                </td>
            </tr>

            <tr>
                <th>Phone Number: </th>
                <td>
                    <input type="number" name="phoneNumber" size="45" required/>
                </td>
            </tr>
            <tr>
                <th>Date of Birth: </th>
                <td>
                    <input type="date" name="dateOfBirth" size="45" required/>
                </td>
            </tr>
            <tr>
                <th>Nationality: </th>
                <td>
                    <input type="text" name="nationality" size="45" required/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Submit"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>