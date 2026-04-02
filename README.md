🎨 Containerized Portfolio Infrastructure
A high-performance, containerized personal portfolio website built with Nginx and orchestrated using Docker Compose. This project demonstrates a professional DevOps workflow for environment parity, persistent logging, and live-reload development.

🚀 Key Features
Automated Orchestration: Single-command deployment using docker-compose.

Live Development: Integrated Bind Mounts to sync local code changes to the container in real-time.

Data Persistence: Utilizes Named Volumes to persist Nginx access and error logs, ensuring data integrity across container lifecycles.

Production Ready: Uses a lightweight nginx:alpine base image for a small security footprint.

🛠 Tech Stack
Web Server: Nginx

Containerization: Docker

Orchestration: Docker Compose

Cloud Ready: Compatible with AWS EC2 (Free Tier)

📂 Project Structure
Plaintext
.
├── Dockerfile           # Blueprint for the Nginx image
├── docker-compose.yml   # Orchestration for services, volumes, and networks
├── index.html           # Portfolio website content
└── .gitignore           # Prevents system junk from entering VCS
🚦 Getting Started
Prerequisites
Docker Desktop installed

Git installed

Installation & Deployment

Clone the repository:
git clone https://github.com/ShwetaMG/Docker_compose_portfolio_project.git
cd Docker_compose_portfolio_project

Spin up the infrastructure:
docker-compose up -d

View the site:
Open your browser and navigate to http://localhost:9090

🧠 DevOps Logic Applied
1. Storage Strategy (Mounts vs. Volumes)
I implemented a dual-storage strategy to handle different data needs:

Bind Mount (.:/usr/share/nginx/html): Used during development so that edits to index.html on the host machine are reflected instantly without rebuilding the image.

Named Volume (site-logs): Mapped to /var/log/nginx to ensure that server traffic data is preserved even if the container is destroyed or updated.

2. Monitoring Logs
To view the live traffic heartbeat of the server, use the following command:

Bash
docker logs -f my-prod-portfolio
📈 Future Roadmap
[ ] Implement a Multi-stage Build to further reduce image size.

[ ] Add a Python/Flask backend with a MySQL database container.

[ ] Set up a GitHub Actions CI/CD pipeline for automated deployment to AWS EC2.

Author: Shweta G