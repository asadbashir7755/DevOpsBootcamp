# Ansible Practice and Learning Repository

This repository documents my hands-on learning and practice with **Ansible**, a powerful open-source configuration management and automation tool. I used **CentOS** as the control node and worked with both **local and AWS EC2 instances**.

## 🧠 What I Learned

### ✅ SSH Setup

* Generated SSH keys using `ssh-keygen`
* Configured passwordless login by copying the public key to `authorized_keys` on remote machines
* Connected to both local and cloud servers (EC2) using SSH

### ✅ Ping After SSH

To verify Ansible is able to connect to the target machine after SSH setup:

```bash
ansible all -i inventory -m ping
```

This confirms Ansible is able to access the node using SSH and is ready for automation.

### ✅ Inventory Management

* Created a custom Ansible `inventory` file
* Used public IPs of remote machines in the inventory
* Understood how inventory works with different OS types (Ubuntu, CentOS)

### ✅ Ad-Hoc Commands

Practiced the most common ad-hoc commands used in **real-world DevOps and interviews**:

#### 🔧 System & Info

```bash
ansible all -i inventory -m shell -a "uptime"
ansible all -i inventory -m shell -a "free -h"
ansible all -i inventory -m shell -a "df -h"
```

#### 📆 Package Management

```bash
# For CentOS
yum:
ansible all -i inventory -m yum -a "name=nginx state=present"

# For Ubuntu
apt:
ansible all -i inventory -m apt -a "name=curl state=present update_cache=yes"
```

#### 📂 File and Directory

```bash
ansible all -i inventory -m file -a "path=/tmp/demo state=touch"
ansible all -i inventory -m file -a "path=/tmp/mydir state=directory"
```

#### 📁 File Copy

```bash
ansible all -i inventory -m copy -a "src=./test.txt dest=/tmp/test.txt"
```

#### 👤 User Management

```bash
ansible all -i inventory -m user -a "name=devops state=present"
ansible all -i inventory -m group -a "name=devgroup state=present"
```

#### 🛠 Service Control

```bash
ansible all -i inventory -m service -a "name=nginx state=started enabled=true"
```

#### 🔐 SSH Key Management

```bash
ansible all -i inventory -m authorized_key -a "user=ubuntu key='{{ lookup('file', '/home/asad/.ssh/id_rsa.pub') }}'"
```

#### 📱 System Info

```bash
ansible all -i inventory -m ping
ansible all -i inventory -m setup
```

---

## 📓 Ansible Playbook: Install and Start Nginx

This is a simple playbook created to automate the installation and starting of the **Nginx** service on CentOS systems using the `dnf` module.

### Playbook Code:

```yaml
---
- name: Install and Start nginx
  hosts: webservers
  become: true

  tasks:
    - name: Install nginx
      dnf:
        name: nginx
        state: present

    - name: Start nginx
      service:
        name: nginx
        state: started
        enabled: true
```

### How to Run:

```bash
ansible-playbook -i inventory nginx_setup.yml
```

Make sure your inventory file contains the `[webservers]` group with the correct IPs.

---

## 🧱 Role-Based Automation

### 🔹 What Are Roles?

Roles are reusable, modular units in Ansible. I created a role structure using:

```bash
ansible-galaxy init nginx_setup
```

### 📁 Role Structure Example

```bash
nginx_setup/
├── tasks/
│   └── main.yml
├── handlers/
│   └── main.yml
├── templates/
│   └── nginx.conf.j2
├── files/
│   └── index.html
├── vars/
│   └── main.yml
```

### 📘 Used in Playbook

```yaml
- hosts: all
  become: yes
  roles:
    - nginx_setup
```

---

## 🧰 Tools & Skills

* Ansible
* Linux (CentOS, Ubuntu)
* AWS EC2
* SSH key management
* Git
* Bash scripting

---

## 🧪 Future Plans

* Practice Ansible Playbooks in depth
* Create real-world DevOps projects using Ansible roles
* Automate full infrastructure setups with Ansible + Terraform
* Use dynamic inventories and Ansible Vault

---

## 🤝 Contribution

This repository is for personal learning. Feel free to fork or use as a reference.

---

## 📜 License

MIT License
