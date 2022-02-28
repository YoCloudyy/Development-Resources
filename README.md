## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Cloud Network Diagram](https://github.com/YoCloudyy/Development-Resources/blob/main/Diagrams/Cloud%20Network%20Diagram.PNG?raw=true)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the Playbook.yml file may be used to install only certain pieces of it, such as Filebeat.

  - [Playbook.yml](https://github.com/YoCloudyy/Development-Resources/blob/ac10add1ce742add2e85f95c1e12ced6e52c8a50/Ansible/Playbooks/playbook.yml) - Install DVWA Servers
  - [ElkInstall.yml](https://github.com/YoCloudyy/Development-Resources/blob/ac10add1ce742add2e85f95c1e12ced6e52c8a50/Ansible/Playbooks/install-elk.yml) -Install Elk stack
  - [filebeat.yml](https://github.com/YoCloudyy/Development-Resources/blob/b19d439001e432ba49255e366995216e82cf187f/Ansible/Playbooks/filebeat-playbook.yml) - install and Configure filebeat
  -  [Metricbeat.yml](https://github.com/YoCloudyy/Development-Resources/blob/b19d439001e432ba49255e366995216e82cf187f/Ansible/Playbooks/metricbeat-playbook.yml) - Install and configure Metricbeat.yml



### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
Load balancers supports the enviroments availability with the distribution of all data transfering to the webservers.
An advantage of the a Jumpbox is that it allows a secure access to each of the webservers, adding additional layer of security to he network. 


Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system traffic.
- Filebeat watches for log files and collect log events.
- Metricbeat records metrics data from the operating system and services on the server

The configuration details of each machine may be found below.

| Name        | Function   | IP Address | Operating System |
|-------------|------------|------------|------------------|
| Jump Box    |  Gateway   | 10.0.0.8   | Linux (Ubuntu)   |
| Web 1       | Webserver  | 10.0.0.9   | Linux (Ubuntu)   |
| Web 2       | Webserver  | 10.0.0.11  | Linux (Ubuntu)   |
| Elk-server  | elk stack  | 10.1.0.4   | Linux (Ubuntu)   |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump box Machine Provisioner machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- Personal IP address

Machines within the network can only be accessed by SSH connection.
- The Elk Stack can only be connect by the Jumpbox machine via SSH and through web access through Personal IP

A summary of the access policies in place can be found in the table below.

| Name       | Publicly Accessible | Allowed IP Addresses               
|------------|---------------------|------------------------------------|
| Jump Box   | Yes                 | Personal IP - SSH                  |
| Elk Stack  | No                  | Personal -port 5601 / Jumpbox -SSH |
|  Web 1     | Yes Through LB      | Jump box -SSH                      |
|  Web 2     | Yes Through LB      | Jump box -SSH                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because system administraction and installation can be easily streamlined through optionsw such playbooks as well as being able to do this with multiple servers at once without having to physically update each individually.

The playbook implements the following tasks:
- installs docker.io
- Installs pip3
- install the docker modules.

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![Dockerps]([https://github.com/YoCloudyy/Development-Resources/blob/fc908c37da888c17e9c7336c017fd77bebc25e8c/Ansible/Images/elk761.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1 10.0.0.9 
- Web-2 10.0.0.11

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- F

- _Filebeat watches for log files/locations and collect log events. (Filebeat: Lightweight Log Analysis & Elasticsearch)
Metricbeat records metrics and statistical data from the operating system and from services running on the server (Metricbeat: Lightweight Shipper for Metrics)

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
