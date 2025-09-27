# **Portfolio Website**

## **Quick Overview**

This repository contains the source files (HTML, CSS, JavaScript, images, etc.) for a **static website** that is deployed and hosted on a **Google Cloud Storage (GCS) bucket**.

## **Live Website**

You can view the publicly deployed website here:

**(https://storage.googleapis.com/nkstatic-web/portfolio-webnk/index1.html)**

## **Project Structure**

The structure of this repository holds all the necessary assets for the static site:
 
├── index.html            
├── css/  
│   └── main.css   
├── js/  
│   └── main.js                                                                                                                                                                                                     
├── sass/  
│   └── main.scss  
├── images                                                                                                                                                                                                          
└── README.md                                                                                                                                                                                                       
└── LICENSE.txt

## **☁️ Deployment on Google Cloud Storage**

The website is hosted on Google Cloud Storage, which is configured to serve the static content directly.

### **Key Configuration Details**

* **Hosting Service:** Google Cloud Storage (GCS)  
* **Bucket Name:** nkstatic-web  
* **Index Page Suffix:** index1.html  
* **Access:** The bucket must be configured for **public read access** for all objects.

### **How to Update/Redeploy**

To update the live website, you must sync the contents of this repository to the designated GCS bucket.

1. **Authenticate:** Ensure you have the Google Cloud SDK installed and authenticated.  
2. **Sync:** Run the following gsutil command from the root of this repository:  
   \# The 'rsync \-r' command mirrors the local directory to the bucket.  
   gsutil rsync \-r . gs://nkstatic-web/portfolio-webnk/index1.html 


## **📝 License**

This project is licensed under the **creativecommons.org/licenses**. See the LICENSE.md file (if you have one) for details.

## **📧 Contact**

* **Author:** Nana Kwame Abaasah  
* **GitHub:** @NanaAbass 
* **Website/Portfolio:** https://sites.google.com/view/nana-abaasah/
