<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../static/css/booking.css">
    <title>Booking</title>
</head>
<body>
<table id="bookingTable">
    <tr>
        <th>Centre Name</th>
        <th>Address</th>
        <th>Availability</th> <!--This is the amount of appointment slots remaining-->
        <th>Phone Number</th>
    </tr>
    <tr>
        <td>Your moms house</td>
        <td>123 Fake Street</td>
        <td>0</td>
        <td>01839058775</td>
        <td id="bookingSlot">
            <label for="times">Select Time:</label>
            <select name="times" class="timeDropDown">
                <option value="13:00">13:00</option>
                <option value="14:00">14:00</option>
                <option value="15:00">15:00</option>
            </select>
            <input type="submit" value="Book">
        </td>
    </tr>
    <tr>
        <td>Kealans House</td>
        <td>123 Dumb Road</td>
        <td>999</td>
        <td>01 384 4739</td>
        <td id="bookingSlot">
            <label for="times">Select Time:</label>
            <select name="times" class="timeDropDown">
                <option value="13:00">13:00</option>
                <option value="14:00">14:00</option>
                <option value="15:00">15:00</option>
            </select>
            <input type="submit" value="Book">
        </td>
    </tr>
</table>
</body>
</html>