# Virtual-Classroom-Project

### README: Virtual Classroom Web Application

---

### Project Overview

This project implements a **Virtual Classroom** where administrators/instructors can manage classes, books (units), and chapters (sessions), and students can access course materials. The application supports nested discussions on lecture materials and restricts access to only enrolled students. The platform ensures scalability, security, and real-time performance, following best practices in coding, design, and containerization.


### Features

1. **Instructor Management**: Admins/Instructors can create and manage classes with multiple units (Books) and sessions (Chapters).
2. **Student Access**: Only enrolled students can access class materials and participate in discussions.
3. **Course Material**: Each session contains multiple lectures accessible to students.
4. **Discussion Threads**: Nested comments on lectures allow students to engage in structured discussions.
5. **Authentication**: Role-based access control using JWT tokens for secure access management.
6. **Scalability**: Designed to handle a high volume of interactions, ensuring efficient performance.


### Project Structure

```bash
virtual-classroom/
├── backend/                   # Backend Java source code (Spring Boot)
│   ├── src/main/java/         # Java code (Controllers, Services, Repositories)
│   ├── src/main/resources/    # Configuration files (application.properties)
│   └── pom.xml                # Maven dependencies
│
├── frontend/                  # Frontend source code (React)
│   ├── public/                # Static files (index.html, icons)
│   ├── src/                   # React components, pages, and assets
│   └── package.json           # NPM dependencies
│
├── docker-compose.yml         # Docker configuration for containerization
├── README.md                  # Project setup instructions and walkthroughs
└── .env                       # Environment variables
```


### Prerequisites

- **Java 17** (for backend development)
- **Maven** (for building and managing backend dependencies)
- **HTML, CSS, JavaScript, Node.js** (v16+ for frontend development)
- **Docker** (optional, for containerized deployment)
- **Cosmocloud Account** (for cloud-based storage, compute, and database management)


### Setup Instructions

#### 1. **Backend Setup (Spring Boot)**

1. Clone the repository:
   ```bash
   git clone https://github.com/your-repo/virtual-classroom.git
   cd virtual-classroom/backend
   ```

2. Configure environment variables:
   Create a `.env` file in the backend directory and add the following:
   ```bash
   JWT_SECRET=your_jwt_secret_key
   DATABASE_URL=jdbc:postgresql://your-cosmocloud-database-url
   ```

3. Install Maven dependencies and start the backend:
   ```bash
   mvn clean install
   mvn spring-boot:run
   ```

4. The backend will run at `http://localhost:8080`.

#### 2. **Frontend Setup (HTML, CSS, JavaScript, React)**

1. Navigate to the frontend directory:
   ```bash
   cd ../frontend
   ```

2. Install the frontend dependencies:
   ```bash
   npm install
   ```

3. Start the React development server:
   ```bash
   npm start
   ```

4. The frontend will run at `http://localhost:3000`.

---

### Using Docker for Full Stack Setup

1. Ensure **Docker** is installed.
2. Run the application using Docker:
   ```bash
   docker-compose up
   ```
3. The backend will be available at `http://localhost:8080`, and the frontend at `http://localhost:3000`.


### **Code Walkthrough**

#### **Backend (Spring Boot)**

- **Controllers**: Handle HTTP requests related to classes, units, sessions, and discussions.
- **Services**: Contain business logic for user authentication, course management, and discussion handling.
- **Repositories**: Interact with the database for storing and retrieving user, class, and comment data.

#### **Frontend (HTML, CSS, JavaScript, React)**

- **Components**: Functional React components for class dashboards, lecture views, and discussion threads.
- **Redux**: Used for managing global state, handling user authentication, and role-based access control.
- **Axios**: Manages API calls to the backend for fetching course materials and submitting comments.


### Testing

#### Backend Tests
Run unit tests with Maven:
```bash
mvn test
```

#### Frontend Tests
Run unit tests for React components:
```bash
npm test
```

---

### Deployment & Containerization

- **Docker**: The application uses **Docker** for containerization. Both the backend and frontend are containerized, allowing easy deployment and scalability across multiple environments.
- **Cosmocloud**: For production deployment, **Cosmocloud Compute** and **Cosmocloud Object Storage** will be used for scalable backend hosting and file storage.

---

### Security & Privacy

- **JWT Authentication**: Secure authentication with JWT tokens ensures that only authorized users (instructors, students) access class materials.
- **Role-Based Access Control (RBAC)**: Users are assigned roles (student, instructor, admin) to control access to various functionalities.
- **Encrypted Data**: Sensitive data such as passwords and JWT secrets are encrypted and stored securely.

---

### Contributors

Parimal Salunkhe
