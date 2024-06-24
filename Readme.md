# Uptime Checker Backend

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Running the Application](#running-the-application)
- [API Endpoints](#api-endpoints)
- [Database Setup](#database-setup)
- [Messaging Setup](#messaging-setup)
- [Testing](#testing)
- [Contributing](#contributing)
- [Contact](#contact)

## Introduction

The backend of the Uptime Checker application is built with Spring Boot, leveraging advanced features to ensure robust performance and real-time functionality. Key aspects of the backend architecture include:

- **Multithreading for Efficient Website Uptime Tracking:** Utilizes Java ExecutorService and ScheduledThreadPoolExecutor to concurrently monitor multiple websites, ensuring efficient and responsive uptime tracking.

- **Real-time Updates with WebSocket:** Implements WebSocket communication with STOMP protocol, allowing clients to receive instantaneous updates on website statuses without continuous polling.

This setup enables users to register websites for monitoring, receive real-time updates on uptime and downtime, and access historical data seamlessly. The backend also integrates with PostgreSQL for data storage and RabbitMQ for messaging, ensuring scalability and reliability.


## Features

- User authentication (login and sign-up)
- Register websites for monitoring
- Real-time updates on website uptime and downtime
- Notifications via email and Slack if a website is down
- Historical data storage and retrieval
- Download historical data in csv format

## Technologies Used

- **Backend Framework:** Spring Boot
- **Java:** 1.8
- **Database:** PostgreSQL
- **Messaging:** RabbitMQ
- **Multithreading:** Java ExecutorService, ScheduledThreadPoolExecutor etc.
- **Real-time Updates:** Socket APIs (WebSocket, STOMP)
- **Containerization:** Docker
- **Other Tools:** Spring Data JPA, Hibernate, Spring Security JWT

## Prerequisites

- Docker
- Docker Compose

## Installation

1. Clone the repository
   ```sh
   git clone https://github.com/rishanaznin00/uptimeChecker-master.git

## Running the Application

To run the backend with Docker, follow these steps:

1. Start the Docker containers using Docker Compose:

   ```sh
   docker-compose up

The backend application should now be accessible at http://localhost:8080.

## API Endpoints

### Authentication

- **POST** `/auth/login`
    - Description: Endpoint for user authentication. Allows registered users to log in and obtain access tokens.

- **POST** `/auth/signup`
    - Description: Endpoint for user registration. Allows new users to create an account and obtain authentication credentials.

- **POST** `/auth/logout`
    - Description: Endpoint for user logout. Invalidates the current session and revokes access tokens.

### Websites

- **GET** `/websites`
    - Description: Retrieve a list of all registered websites.

- **POST** `/websites`
    - Description: Register a new website for monitoring.

- **PATCH** `/websites/{webId}`
    - Description: Update details of a specific website.

- **DELETE** `/websites/{webId}`
    - Description: Remove a specific website from monitoring.

- **GET** `/websites/{webId}`
    - Description: Retrieve detailed information about a specific website.

- **GET** `/websites/{webId}/down-time-summary`
    - Description: Retrieve downtime summary history for a specific website.

- **GET** `/websites/{webId}/today-down-time-histories`
    - Description: Retrieve today's downtime histories for a specific website.

### Users

- **PATCH** `/users/{userId}`
    - Description: Update details of a specific user.


## Database Setup
The backend uses PostgreSQL as the database. It is configured in the docker-compose.yml file. 

## Messaging Setup
The backend uses RabbitMQ for messaging. It is configured in the docker-compose.yml file. 

## Testing


## Contributing
Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch (git checkout -b feature/your-feature-name).
3. Make your changes.
4. Commit your changes (git commit -m 'Add some feature').
5. Push to the branch (git push origin feature/your-feature-name).
6. Open a Pull Request.

## Contact
If you have any questions or suggestions, feel free to contact me:

Name: Risha Naznin  
Email: rishanaznin@gmail.com  
GitHub: rishanaznin00

