# **Real-time Public Chat Application**

## **Overview**

This is a single-page, real-time public chat application designed for simple, cross-platform communication. It features a modern, responsive UI and uses **Google Firebase Firestore** to handle all messages, user status, and custom display names in real time. Users can sign in anonymously or with email/password to participate in the conversation.

## **Key Features**

* **Real-time Messaging:** Messages are instantly synchronized across all active users using Firestore listeners.  
* **User Authentication:** Supports both anonymous sign-in and email/password registration/login.  
* **Custom Display Names:** Users can set and update a persistent display name which is cached and updated in real time for all participants.  
* **Typing Indicator:** A real-time indicator shows when other users are actively typing in the input field.  
* **Responsive Design:** Optimized layout for seamless use on both mobile devices and desktop browsers.

## **Technology Stack**

The application is built entirely within a single HTML file, utilizing the following technologies:

| Technology | Purpose |
| :---- | :---- |
| **HTML5/JavaScript/CSS** | Core application structure and logic. |
| **Firebase Firestore** | Real-time database for messages, user profiles, and typing status. |
| **Firebase Authentication** | User sign-in (anonymous and email/password). |
| **Tailwind CSS (CDN)** | Utility-first framework used for rapid, responsive styling. |

## **Setup and Running the Project**

This project is delivered as a **single, self-contained index.html file**.

### **Prerequisites**

1. **Firebase Project:** You must have a Google Firebase project set up.  
2. **Firestore and Auth:** Ensure both **Firestore Database** (set to public read/write for the necessary collections) and **Authentication** (enabled for Anonymous and Email/Password) are configured.

### **Instructions**

1. **Open index.html:** Simply open the index.html file in any modern web browser.  
2. **Configuration:** The application's JavaScript contains a placeholder firebaseConfig object. For full functionality, you should replace this with your actual Firebase project configuration:  
   // Find this block in index.html and update it with your credentials:  
   firebaseConfig \= {  
       apiKey: "YOUR\_API\_KEY",  
       authDomain: "YOUR\_AUTH\_DOMAIN",  
       projectId: "YOUR\_PROJECT\_ID",  
       // ... other configurations  
   };

3. **Use:** The application will automatically sign you in anonymously upon loading. Click "Sign In" to switch to a registered account, or click on your default user name (e.g., User\_xxxxxx) to set a custom display name.

## **Data Structure in Firestore**

The application uses the following main collections under the public path (/artifacts/{appId}/public/data/):

| Collection Name | Document ID | Purpose |
| :---- | :---- | :---- |
| messages | Auto-generated ID | Stores all chat history, timestamps, user ID, and edit status. |
| users | User's UID | Stores user-specific settings, primarily the displayName. |
| typing | status | Contains a map of actively typing users and their last activity timestamp. |

