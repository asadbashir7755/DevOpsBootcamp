## ✅ **Day 8 – GitHub API Shell Script**

🗕️ **Date:** 19 June
👨‍💻 **Author:** Asad Bashir
🔧 **Tools Used:** GitHub API, Shell Scripting, `curl`, `jq`
📂 **Script Name:** `list-users2.sh`

---

### 🔽 **What I Did**

On Day 8, I created a shell script that interacts with the **GitHub REST API** to list users who have **read (pull) access** to a specific repository. The script takes the **repository owner** and **repository name** as command-line arguments and uses **Basic Authentication** via a GitHub **Personal Access Token (PAT)**.

Key actions performed:

* Defined a base GitHub API URL.
* Used `curl` to make authenticated API requests.
* Parsed JSON responses using `jq`.
* Filtered out users with `pull` permission.
* Handled invalid or malformed API responses gracefully.

---

### 🧠 **What I Learned**

* How to interact with the **GitHub REST API** using shell scripting.
* How to send authenticated HTTP requests using `curl -u`.
* Using `jq` to parse and filter JSON data in the shell.
* How to handle API errors and validate JSON structure before processing.
* More real-world use of shell scripting for automation in DevOps tasks.

---

### 📌 Notes

* Do **not hardcode** your PAT in scripts. Use environment variables or `.env` files (script has been updated in the GitHub repo for best practices).
* The script accepts two arguments: repository owner and repository name.
* Ensure that the PAT has **`repo` scope** to access collaborator data.
* The actual script is available in the GitHub repository.
