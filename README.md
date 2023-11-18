# Java-Web-Email-Application
This is a Java web application built using JSP, Servlets, and a MySQL database. The application implements basic email functionality, including composing, sending, receiving, and deleting emails. Users can register, login, view their inbox, sent items, trash, compose new emails, and more.

## Key Components

- **LoginServlet and RegisterServlet**: Handle user registration and authentication.
- **ConnectionProvider**: Sets up the database connection to MySQL.
- **ComposeMailServlet**: Allows composing and sending a new email. Saved to the sentmails table.
- **HomeServlet**: Fetches and displays emails from the inbox table.
- **SentServlet and TrashServlet**: Display sent emails and trashed emails, respectively.
- **ReadMailServlet**: Displays contents of a single email.
- **DeleteMailServlet**: Deletes an email by moving it to the trash or sentmails table.
- **JSP pages (index.jsp, compose.jsp, home.jsp, etc.)**: Provide the UI.

## Key Features

- User registration with email validation.
- Login/logout functionality with session management.
- Compose new emails with attachment support.
- HTML email rendering.
- Organize emails into inbox, sent, trash folders.
- Read, reply, delete single emails.
- Responsive UI.

## Architecture

- Typical MVC architecture followed.
- MySQL DB at the backend with JDBC for CRUD operations.
- Servlets interact with the DB and provide backend logic.
- JSPs generate the UI shown to the user.
- Frontend uses HTML, CSS, JS.

## Overview

This project implements a simple yet functional email application with standard features using Java, JSP, Servlets, and MySQL. The code is organized cleanly, making it easy to understand and maintain.

Feel free to explore the code and contribute to further enhancements!
