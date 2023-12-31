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

## Images
![Screenshot 2023-11-18 192007](https://github.com/navadkarsujit/Java-Web-Email-Application/assets/144350681/9ae9c2a0-fe95-43b3-900a-628aeedbcca4)
![Screenshot 2023-11-18 192132](https://github.com/navadkarsujit/Java-Web-Email-Application/assets/144350681/bc66729b-2bd3-4f7a-b827-a28c7482768a)
![Screenshot 2023-11-18 192312](https://github.com/navadkarsujit/Java-Web-Email-Application/assets/144350681/d8a95a89-8529-4fd7-ae2f-4dcb9e3eac88)
![Screenshot 2023-11-18 192157](https://github.com/navadkarsujit/Java-Web-Email-Application/assets/144350681/52ef7b99-2907-4af5-8fee-3ba98ca075d1)
