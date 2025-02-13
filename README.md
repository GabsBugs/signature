<p style="color: red;">
  <strong>Note:</strong> This project is a draft/prototype and is intended for study/demonstration purposes only. It is 
not production-ready.
</p>

# Digital Signature - Example Project

This project demonstrates how to implement a digital signature using Java (Jakarta EE) and Servlets. It allows users to input a message, digitally sign it, and verify the signature.

This project is intended for study purposes in the fields of security systems, digital signatures, and encryption.

## 🚀 Technologies Used

- **Java** (JDK 17)
- **Jakarta Servlet API** (6.0.0)
- **Apache Tomcat** (11.0.3)
- **Maven** (for dependency management)

## 📋 Prerequisites

Before you begin, ensure you have installed:

- [JDK 17](https://adoptium.net/) or higher.
- [Apache Tomcat 11](https://tomcat.apache.org/download-11.cgi).
- [IntelliJ IDEA](https://www.jetbrains.com/idea/) or another preferred IDE.
- [Maven](https://maven.apache.org/) (included in IntelliJ IDEA).

## 🛠️ Project Setup

1. **Clone the repository** (if applicable):
   ```bash
   git clone https://github.com/GabsBugs/signature.git
   cd signature
   
2. **Import the project in IntelliJ IDEA**
   - Open IntelliJ IDEA.
   - Select `File > Open` and choose the project directory.

3. **Configure Tomcat:**
   - Go to `Run > Edit Configurations`.
   - Add a new `Tomcat Server` configuration.
   - Set the `Application context` to `/signature`.
   
4. **Download dependencies:**

   Maven will automatically download dependencies when importing the project.
   If needed, run:
   ```mvn clean install```
5. **Run the project:**
    - Click `Run` in IntelliJ IDEA.
    - Tomcat will start, and the project will be available at:
  http://localhost:8080/signature

## 🖥️ How to Use

1. **Access the homepage:**
   http://localhost:8080/signature
2. **Enter a message in the text field and click "Sign Message".**
3. **The system will:**
   - Generate a digital signature for the message.
   - Display the signature in Base64 format.
   - Verify the signature and display the result.

## 🧩 Project Structure

- **src/main/java/com/signapp/servlets/SignatureServlet.java:** Servlet responsible for processing the digital 
  signature.

- **src/main/webapp/index.html:** Simple HTML page to input the message and submit it to the servlet.

- **pom.xml:** Maven configuration file with project dependencies.

## 📝 License

This project is licensed under the MIT License. See the LICENSE file for details.


<p align="center">
  Made with ❤️ by <a href="https://github.com/GabsBugs">Gabrielly</a>
</p>