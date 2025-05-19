# 📅 Day 2 – Understanding SDLC and DevOps  
🗓️ Date: May 19, 2025 (Sunday)

---

## 📘 What is SDLC?

**SDLC (Software Development Life Cycle)** is the process used by the software industry to design, develop, and test high-quality software. It provides a **structured approach** to software development and ensures that the product meets business goals and user needs.

---

## 🔁 Phases of SDLC

1. **Requirement Gathering**  
   Business analysts and stakeholders define what the software must do.  
   📌 *Example:* An e-commerce client wants a shopping cart feature.

2. **Planning**  
   A roadmap is created for time, cost, and resource management.  
   📌 *Example:* Decide team roles, tools, and timelines for cart development.

3. **Design**  
   Technical architecture and UI/UX are designed.  
   📌 *Example:* Create mockups and database structure for cart.

4. **Development**  
   Developers write code according to the approved designs.  
   📌 *Example:* Backend APIs for cart, frontend UI with React.

5. **Testing**  
   The software is tested to ensure it meets the requirements and is bug-free.  
   📌 *Example:* QA team checks cart item addition, removal, and total.

6. **Deployment**  
   The application is released to production for users.  
   📌 *Example:* Deploy cart feature on the live website.

7. **Maintenance**  
   Ongoing support, updates, and bug fixes after release.  
   📌 *Example:* Fixing cart bugs reported by users after launch.

---

## ⚙️ SDLC Without DevOps

- Manual handover between teams.
- Testing and deployment done at the end.
- Longer release cycles.
- Difficult rollback and issue tracking.
- Communication gaps between Dev and Ops.

🚫 **Problems:**
- Delayed feedback.
- Manual errors.
- Lack of automation.
- Unstable releases.

---

## ✅ SDLC With DevOps

- All SDLC phases are automated and integrated.
- Continuous Integration & Continuous Deployment (CI/CD) improves speed.
- Teams collaborate through shared tools like Git, Jenkins, Docker, etc.
- Testing happens in every stage (Shift Left Testing).
- Monitoring tools give real-time feedback and improve quality.

🛠️ **How DevOps Improves SDLC:**
| SDLC Phase      | Without DevOps                           | With DevOps                                      |
|----------------|-------------------------------------------|--------------------------------------------------|
| Requirement     | Shared in documents                      | Shared in versioned, collaborative tools         |
| Planning        | Isolated per team                        | Cross-team with shared planning boards           |
| Design          | Not validated early                      | Reviewed using continuous feedback               |
| Development     | Code merged manually                     | Code pushed and tested via pipelines             |
| Testing         | Done after development                   | Automated testing runs on every commit           |
| Deployment      | Manual uploads                           | CI/CD pipelines auto-deploy after testing        |
| Maintenance     | Reactive with delays                     | Proactive with monitoring & alerts               |

---

## 🧵 Real-Life Example

### 🚫 Without DevOps – Traditional SDLC

> You’re building a **To-Do app**. Dev team codes for 4 weeks. Testing starts late. Bugs are found just before release. Ops manually deploys the code. A critical issue appears, rollback fails. It takes days to fix.

### ✅ With DevOps – Modern SDLC

> The same **To-Do app** is built with DevOps. Devs commit daily. CI/CD pipeline tests and deploys changes automatically. Bugs are caught early. Monitoring tools detect an error, an alert is triggered, and a fix is deployed within an hour.

---

## 📌 Summary

DevOps enhances the SDLC by introducing **automation, continuous feedback, and collaboration**. It helps deliver software **faster**, with **higher quality**, and **lower risk**. Traditional SDLC was rigid and slow. DevOps makes it adaptive and efficient.

---

🔚 *End of Day 2 – You now understand how DevOps integrates with SDLC for better software delivery.*
