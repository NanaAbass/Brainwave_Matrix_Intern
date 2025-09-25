# **VitalCare Landing Page**

## **Project Overview**

This repository contains the code for a simple, single-page healthcare web application and its corresponding landing page. It's designed as a starting point for a patient portal, allowing users to view a dashboard with their upcoming appointments. The entire application is built using a single HTML file, making it easy to deploy and manage.

The project was developed with a focus on a clean, intuitive, and modern user interface, built with HTML and styled with Tailwind CSS.

## **Technologies Used**

* **HTML5**: For the web app's structure.  
* **Tailwind CSS**: A utility-first CSS framework for rapid styling.  
* **JavaScript**: To handle interactive elements like adding appointments.  
* **Docker**: To containerize the application for consistent deployment.  
* **Amazon Web Services (AWS)**:  
  * **Elastic Container Registry (ECR)**: To store the Docker image.  
  * **Elastic Container Service (ECS)**: To run and manage the container in the cloud.

## **Project Structure**

Your repository should contain the following files:

* **landing\_page.html**: The public-facing landing page for the application.  
* **healthcare\_app.html**: The main patient portal dashboard.  
* **Dockerfile**: The instructions for building the Docker image.  
* **docker-compose.yml**: A configuration file for running the app locally with Docker.  
* **nginx.conf**: The Nginx configuration file to ensure the landing page loads by default.

## **Local Development**

To run the application on your local machine, you need to have **Docker** and **Docker Compose** installed.

1. Clone this repository to your local machine.  
2. Open your terminal or PowerShell and navigate to the project directory.  
3. Build the Docker image using the docker-compose.yml file:  
   docker-compose build

4. Run the container:  
   docker-compose up \-d

5. Open your web browser and navigate to http://localhost:8080/landing\_page.html to see the landing page, or http://localhost:8080/healthcare\_app.html for the patient portal.

To stop the container, run docker-compose down.

## **AWS Deployment**

This guide outlines the steps to deploy the containerized application to AWS using ECR and ECS.

### **Phase 1: Push the Docker Image to ECR**

1. **Create an ECR Repository**:  
   aws ecr create-repository \--repository-name vitalcare-app \--region us-east-1

2. **Authenticate Docker with ECR**:  
   * **For Linux/macOS**:  
     aws ecr get-login-password \--region us-east-1 | docker login \--username AWS \--password-stdin 123456789012.dkr.ecr.us-east-1.amazonaws.com

   * **For Windows (PowerShell)**:  
     $ECR\_PASSWORD \= (aws ecr get-login-password \--region us-east-1)  
     echo $ECR\_PASSWORD | docker login \--username AWS \--password-stdin 123456755666.dkr.ecr.us-east-1.amazonaws.com

3. **Tag and Push Your Image**:  
   docker tag your-app-name:latest \[123456755666.dkr.ecr.us-east-1.amazonaws.com/your-app-name:latest\](https://123456755666.dkr.ecr.us-east-1.amazonaws.com/your-app-name:latest)  
   docker push \[123456755666.dkr.ecr.us-east-1.amazonaws.com/your-app-name:latest\](https://123456755666.dkr.ecr.us-east-1.amazonaws.com/your-app-name:latest)

   *Note: Replace your-app-name and 123456755666 with your actual image name and account ID.*

### **Phase 2: Run the Container with ECS**

1. Navigate to the **AWS ECS Console**.  
2. Click on **Task Definitions** and create a new Task Definition, selecting **Fargate** as the launch type.  
3. Point the container image to your ECR image URL.  
4. Click **Deploy** on the Task Definition page to launch the service.  
5. In the service creation wizard, select your cluster and configure the networking (VPC, subnets, and security groups to allow traffic on port 80).  
6. Once the service is created, go to the **Tasks** tab to find the public IP address of your running container.  
7. Navigate to the public IP address in your browser to see your app live.
