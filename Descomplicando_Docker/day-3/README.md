## Day 3 - Dockerfile Solution: GIROPOPS-SENHAS and REDIS in Separate Containers

On **Day 3**, the task involves creating Dockerfiles to resolve the problem posed on **Day 2**, but this time with **two containers**:
1. One container runs the **GIROPOPS-SENHAS** application.
2. Another container runs **Redis**.

### Solution Overview

In **Day 2**, I solved the problem by using a single container that ran both services, but now, as per the requirements for Day 3, the services are split into two distinct containers.

### Jeferson's Approach in the Lesson

During the lessons, Jeferson launched the **GIROPOPS-SENHAS** container by passing the **ENV** variable with the **IP of the host machine**, where the Redis container was running. The **GIROPOPS-SENHAS** container communicates with Redis by connecting to the host machine's IP, which was made possible by **exposing ports** on both containers.

- **GIROPOPS-SENHAS** listens on **port 5000**.
- **Redis** listens on **port 6379**.

Both containers bind their respective ports to the host, allowing the **GIROPOPS-SENHAS** service to access the Redis database by pointing to the **host machine's IP**, thus establishing the connection.

### Key Configuration

- **GIROPOPS-SENHAS container**:
  - Runs on **port 5000**.
  - The Redis IP address is passed as an environment variable, pointing to the host machine.
  
- **Redis container**:
  - Runs on **port 6379**.
  - Bound to the host machine, making it accessible to other containers using the host's IP.

This setup ensures that both containers can communicate seamlessly through the host's network interface.

### Learned about DistroLess, avaliable in Folder DistroLess on Day-3. 
