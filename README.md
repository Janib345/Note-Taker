# Note Taker

## Description
Note Taker is a web application that allows users to create, read, update, and delete notes. It features a user-friendly interface built with Bootstrap and employs Java Servlet and JSP for backend operations. The application uses MySQL for data storage and Hibernate for ORM.

## Features
- Create new notes with a title and content.
- View a list of all notes.
- Update existing notes.
- Delete notes from the list.
- Responsive design using Bootstrap.

## Technologies Used
- **Bootstrap**: For styling and responsive design.
- **Java Servlet**: For handling server-side logic.
- **JSP**: For rendering dynamic web pages.
- **MySQL**: For database management.
- **Hibernate**: For object-relational mapping.
- **HTML/CSS**: For front-end development.

## Installation

### Prerequisites
- Java Development Kit (JDK)
- Apache Tomcat or another servlet container
- MySQL Server
- Maven (for dependency management)

### Steps
1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/note-taker.git
    ```
2. Navigate to the project directory:
    ```bash
    cd note-taker
    ```
3. Configure the MySQL database:
    - Create a new database and user in MySQL.
    - Update the database connection settings in `hibernate.cfg.xml` file.
4. Build the project using Maven:
    ```bash
    mvn clean install
    ```
5. Deploy the WAR file to your servlet container (e.g., Apache Tomcat).

## Usage
1. Start the servlet container (e.g., Apache Tomcat).
2. Open a web browser and navigate to `http://localhost:8080/note-taker`.
3. Use the interface to create, view, update, or delete notes.

## Configuration
- Update database configuration in `hibernate.cfg.xml` with your MySQL credentials.
- Ensure your servlet container is properly configured to run the application.

## Contributing
Feel free to fork the repository and submit pull requests. For bug reports or feature requests, open an issue in the GitHub repository.


## Acknowledgements
- Bootstrap for the responsive design framework.
- Hibernate for simplifying database operations.
- MySQL for robust data management.

## Contact
For any questions or feedback, please contact [janibhussain6@gmail.com](mailto:janibhussain6@gmail.com).

## Example
![Note Taker Screenshot](link-to-screenshot)

## Changelog
- **v1.0** - Initial release with basic CRUD functionality.
