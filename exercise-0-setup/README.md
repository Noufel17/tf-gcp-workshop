# Introduction to Infrastructure as Code with Terraform and GCP

![Workshop Status](https://img.shields.io/badge/status-ready-green)

Welcome to the official repository for the "Introduction to Infrastructure as Code with Terraform and GCP" workshop. This repository contains all the code and instructions you will need to follow along with the hands-on lab sessions [107].

The goal of this workshop is to provide you with a practical, hands-on introduction to managing cloud infrastructure on Google Cloud Platform (GCP) using Terraform [111].

## Prerequisites

Before starting the workshop, please ensure you have the following installed and configured on your machine [111]:

1.  **Terraform:** [Download and install Terraform](https://developer.hashicorp.com/terraform/downloads)
2.  **Google Cloud SDK (gcloud):** [Install the gcloud CLI](https://cloud.google.com/sdk/docs/install)
3.  **A Google Account:** You will need a Google account (like a Gmail address) to access the GCP project.
4.  **A Code Editor:** A modern text editor like VS Code is recommended.

## Repository Structure

This repository is organized into directories, where each directory corresponds to a step in our hands-on lab. Each folder represents the complete state of our project at the end of that exercise [109].

```
.
├── exercise-0-setup/
├── exercise-1-first-vpc/
├── exercise-2-variables/
│   ...
└── exercise-8-cleanup/
```

This structure allows you to follow along step-by-step or jump to a specific exercise if you fall behind [108].

## Getting Started: Initial Setup

Before we begin writing any Terraform code, you must authenticate with Google Cloud. Please run the following commands in your terminal [106]:

1.  **Log in to your Google Account:**
    ```
    gcloud auth login
    ```
    This command will open a browser window for you to log in.

2.  **Configure Application Default Credentials (ADC):**
    ```
    gcloud auth application-default login
    ```
    Terraform will use these credentials to authenticate with GCP.

3.  **Set the Project ID:**
    Replace `<YOUR_PROJECT_ID>` with the project ID provided by the workshop organizers.
    ```
    gcloud config set project <YOUR_PROJECT_ID>
    ```

## Workshop Exercises

This lab is divided into multiple exercises. You can navigate to each exercise's directory to see the final code for that step [108].

| Exercise                               | Directory                                           | Key Concepts Covered                                           |
| -------------------------------------- | --------------------------------------------------- | -------------------------------------------------------------- |
| **Exercise 0: Setup**                  | [`exercise-0-setup/`](./exercise-0-setup/)          | `gcloud` authentication and project setup.                     |
| **Exercise 1: First VPC**              | [`exercise-1-first-vpc/`](./exercise-1-first-vpc/)  | `terraform init`, `plan`, `apply`, provider, resource block.   |
| **Exercise 2: Variables & Outputs**    | [`exercise-2-variables/`](./exercise-2-variables/)  | `variables.tf`, `outputs.tf`, parameterizing your code.        |
| **Exercise 3: Subnets & Firewall**     | [`exercise-3-subnets/`](./exercise-3-subnets/)      | Creating subnets and firewall rules for network security.      |
| **Exercise 4: Virtual Machines**       | [`exercise-4-vms/`](./exercise-4-vms/)              | Deploying `google_compute_instance` and startup scripts.       |
| **Exercise 5: Using Modules**          | [`exercise-5-modules/`](./exercise-5-modules/)      | Refactoring code into a reusable local module.                 |
| **Exercise 6: State Management**       | [`exercise-6-state/`](./exercise-6-state/)          | Understanding the state file and using `terraform state` commands. |
| **Exercise 7: Ansible (Bonus)**        | [`exercise-7-ansible/`](./exercise-7-ansible/)      | Integrating Terraform with Ansible for configuration management. |
| **Exercise 8: Cleanup**                | [`exercise-8-cleanup/`](./exercise-8-cleanup/)      | Using `terraform destroy` to remove all resources.             |

## How to Use This Repository

1.  **Clone the repository** to your local machine.
2.  **Follow the instructor** during the live coding session.
3.  If you get lost or encounter an error, you can **copy the code from the corresponding exercise directory** to catch up.

## Important: Clean Up

At the end of the workshop, it is crucial to destroy all the resources you've created to avoid incurring costs on the GCP project.

Navigate to your final exercise directory and run:
```
terraform destroy
```
Answer `yes` when prompted to confirm the deletion.

## Additional Resources

- [Terraform on Google Cloud Documentation](https://cloud.google.com/docs/terraform)
- [HashiCorp Terraform Tutorials](https://developer.hashicorp.com/terraform/tutorials)
- [Terraform GCP Provider Documentation](https://registry.terraform.io/providers/hashicorp/google/latest/docs)

---

*This workshop content is for educational purposes. Last updated: November 2025.*
```
