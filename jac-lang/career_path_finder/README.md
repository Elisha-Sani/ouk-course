# 🚀 AI-Powered Career Path Generator (JAC)

This **JaseCI-Augmented Code (JAC)** program demonstrates the use of the `byLLM` keyword to delegate complex reasoning tasks (like creating a **SMART learning path**) to a Large Language Model (LLM).

The program prompts the user for their career goal and location, constructs a `Person` object, and then calls a function whose entire implementation is handled by the **Gemini model**.

---

## 📋 Prerequisites

To run this program, you need:

- The **JAC runtime** installed  
- An environment configured to call the **Gemini API**

---

## 🔑 API Key Setup

Since the JAC code uses the `gemini/gemini-2.0-flash` model, you must set your **Gemini API key** as an environment variable before execution.

### On Linux/macOS:
```bash
export GEMINI_API_KEY="YOUR_API_KEY_HERE"
```

### On Windows (Command Prompt):
```cmd
set GEMINI_API_KEY="YOUR_API_KEY_HERE"
```

### On Windows (PowerShell):
```powershell
$env:GEMINI_API_KEY="YOUR_API_KEY_HERE"
```

> Replace `"YOUR_API_KEY_HERE"` with your actual key.

---

## 📁 Accessing the Code

The complete source code for this application is located in the repository at:

```
ouk-course/jac-lang/career_path_finder/career_path.jac
```

---

## ⚙️ How It Works

- **Model Setup**  
  ```jac
  glob llm = Model(...)
  ```
  Initializes the connection to the specified Gemini model.

- **LLM Function**  
  ```jac
  def find_learning_path(person: Person) -> str by llm();
  ```
  Defines a function that takes a `Person` object and returns a `str`.  
  The `by llm()` keyword indicates that the logic for this function is executed by the globally defined LLM instance (`llm`).

- **Prompting**  
  The docstring (`"""Recommend a SMART clear..."""`) above the function is automatically used as the **System Instruction/Prompt** when the function is called.

- **Data Injection**  
  When `find_learning_path(user_profile)` is executed, the entire structured `user_profile` object (`name`, `career_goal`, `region`) is included in the request payload sent to the Gemini API.  
  This ensures the model generates a **personalized and geographically relevant path**.

---

## ▶️ Example Execution

After downloading the file from the path above, run it using the JAC command line tool:

```bash
jac run career_path_finder.jac
```

The interactive session will look like this:

```
Enter your name: [User Input]
Enter your specific career goal (e.g. Next.js Full Stack Developer): [User Input]
Enter your region/country (e.g. Kenya): [User Input]

**Goal:** Become a proficient [Goal] in [Region]...
... (Detailed steps provided by Gemini)
```

---

## ✅ Summary

This project shows how **JAC + Gemini** can be combined to create an **AI-powered career path generator** that produces **SMART, personalized learning plans** based on user input and location context.
