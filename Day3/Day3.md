# 📅 Day 3 – Understanding Servers, Virtual Machines, and Hypervisors  
🗓️ Date: May 20, 2025 (Monday)

---

## 🖥️ What is a Server?

A **server** is a computer or system that provides resources, data, services, or programs to other computers (known as clients) over a network.

📌 **Example:**  
When you access a website like `www.google.com`, your browser (client) sends a request to Google's servers. The server processes this request and responds with the website content.

---

## ❓ Why Do We Need Servers?

- To **host applications** (e.g., websites, APIs, databases).
- To **store and manage data** (e.g., files, emails, media).
- To **provide services** (e.g., authentication, DNS, game servers).

Without servers, client devices wouldn’t have any backend system to interact with.

---

## 🧱 What is a Virtual Machine (VM)?

A **Virtual Machine** is a software-based emulation of a physical computer. It runs an operating system and applications just like a physical computer, but inside a host machine.

📌 **Example:**  
If you run Ubuntu Linux inside your Windows system using VirtualBox or VMware, that Ubuntu is a virtual machine.

---

## ❓ Why Do We Need Virtual Machines?

- To run **multiple OS environments** on a single physical machine.
- To isolate workloads and improve **security**.
- To **test software** in different environments without new hardware.
- To create scalable environments for **DevOps, CI/CD, and cloud**.

---

## 🧠 What is a Hypervisor?

A **hypervisor** (also known as a virtual machine monitor) is software that creates and runs virtual machines. It allows one host machine to support multiple guest VMs by allocating resources like CPU, RAM, and storage.

### 🧩 Types of Hypervisors:

1. **Type 1 – Bare-Metal Hypervisor**  
   Runs directly on the physical hardware.  
   🔹 Examples: VMware ESXi, Microsoft Hyper-V, Xen Server

2. **Type 2 – Hosted Hypervisor**  
   Runs on top of an existing operating system.  
   🔹 Examples: VirtualBox, VMware Workstation, Parallels

---

## 🌍 How Many Physical Servers Does AWS Have?

While Amazon Web Services (AWS) **does not publicly disclose** the exact number of physical servers, as of recent estimates:

> 🔹 AWS operates **millions of physical servers** across **100+ Availability Zones** in over **30 regions** globally.

These servers power services like EC2, S3, Lambda, and more, supporting **millions of users** worldwide.

---

## 📌 Summary

| Concept           | Meaning                                                                     | Real-World Relevance                                   |
|------------------|------------------------------------------------------------------------------|--------------------------------------------------------|
| Server           | A computer that provides services/data to other computers                   | Hosts websites, APIs, applications                     |
| Virtual Machine  | A software emulation of a physical computer                                 | Used for testing, isolation, and running multiple OSes |
| Hypervisor       | Software that manages and runs virtual machines                             | Enables virtualization on desktops and in data centers |
| AWS Servers      | Millions of physical machines spread globally                               | Power the world’s biggest cloud services               |

---

🔚 *End of Day 3 – You now understand the foundation of servers, virtualization, and cloud infrastructure.*

