<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.vendor.management.DAO.VendorDAO" %>
<%@ page import="com.vendormanagement.model.Vendor" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.PrintWriter" %>

<html>
<head>
    <title>Vendor Management Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 2px solid black;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2; /* Add a background color to header row */
        }

        a {
            text-decoration: none;
            color: black;
        }

        /* Add styles for buttons */
        .add-vendor-btn {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }

        .edit-btn {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 5px 10px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 5px;
        }

        .delete-btn {
            background-color: #dc3545;
            color: #fff;
            border: none;
            padding: 5px 10px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 5px;
        }
    </style>
</head>

<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
        <div>
            <a href="https://www.javaguides.net" class="navbar-brand"> Vendor Management App </a>
        </div>

        <ul class="navbar-nav">
        </ul>
    </nav>
</header>
<br>

<div class="row">
    <div class="container">
        <h3 class="text-center">LIST OF VENDORS</h3>
        <hr>
        <div class="container text-left">
            <!-- Apply add-vendor-btn class to the button -->
            <form><button class="add-vendor-btn"><a href="form.html" style="color: white;">Add New Vendor</a></button></form>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>VENDOR_ID</th>
                    <th>VENDOR_NAME</th>
                    <th>BANK_ACCNO</th>
                    <th>BANK_NAME</th>
                    <th>ADDRESS</th>
                    <th>CITY</th>
                    <th>COUNTRY</th>
                    <th>ZIPCODE</th>
                    <th>ACTION</th>
                </tr>
            </thead>
            <tbody>
                <% 
                try {
                    // Retrieve the list of vendors
                    VendorDAO vendordao = new VendorDAO();
                    List<Vendor> list = vendordao.selectAllVendors();

                    // Output vendor information in the table
                    for (Vendor vendor : list) {
                %>
                        <tr>
                            <td><%= vendor.getVendor_id() %></td>
                            <td><%= vendor.getVendor_name() %></td>
                            <td><%= vendor.getBank_accno() %></td>
                            <td><%= vendor.getBank_name() %></td>
                            <td><%= vendor.getAddressline() %></td>
                            <td><%= vendor.getCity() %></td>
                            <td><%= vendor.getCountry() %></td>
                            <td><%= vendor.getZipcode() %></td>
                            <td>
                                <!-- Apply edit-btn class to the Edit link -->
                                <a href="editServlet?vendorId=<%= vendor.getVendor_id() %>" class="edit-btn">Edit</a>
                                &nbsp;&nbsp;
                                <!-- Apply delete-btn class to the Delete link -->
                                <a href="deleteServlet?vendorId=<%= vendor.getVendor_id() %>" class="delete-btn">Delete</a>
                            </td>
                        </tr>
                <%
                    }
                } catch (Exception e) {
                    e.printStackTrace(); // Log or handle the exception as appropriate
                }
                %>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
