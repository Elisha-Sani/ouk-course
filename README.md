# Jac Language Practice 🐍⚡

A sandbox for learning, experimenting, and documenting my journey with **[Jac Language](https://jac-lang.org/)**.  
This repo is focused on hands-on practice, iterative exploration, and building reproducible examples that deepen my understanding of Jac’s syntax, semantics, and ecosystem.

---

## 📖 About Jac
Jac is a **domain-specific programming language** designed for **graph-based AI systems**. It emphasizes:
- **Agent-based programming**  
- **Graph traversal and manipulation**  
- **Readable, declarative syntax**  

This repo is my personal practice ground for exploring these concepts.

---

## 🎯 Goals
- Learn Jac fundamentals through small, testable examples  
- Explore **agent definitions, behaviors, and graph traversals**  
- Document patterns, idioms, and gotchas for future reference  
- Build a foundation for larger Jac-based projects  

---

## 🗂️ Repo Structure
```bash
ouk-course/
├── basics/          # Core syntax, variables, control flow

```

---

## 🚀 Getting Started
### Prerequisites
- Install [Jac](https://jac-lang.org/docs/installation)  
- Python 3.9+ (Jac runs on top of Python)  

### Running a Jac file
```bash
jac run basics/hello.jac
```

---

## 🧪 Example
```jac
def hellojac() -> str {
    return "Hello there, Jac!";
}

with entry{
    print(f"{hellojac()}");
}
```

Run it:
```bash
jac run basics/hello.jac
```

Output:
```
Hello there, Jac!
```

---

## 📌 Notes
- This repo is **not production code**—it’s purely for practice and exploration.  
- I’ll keep refining examples and documenting insights as I go.  

---

## 📚 Resources
- [Jac Language Docs](https://jac-lang.org/docs/)  
- [Jac GitHub Repo](https://github.com/JacLang/jac)  
- [Jac Playground](https://play.jac-lang.org/)  

---
