# incubyte task :


1) Create Amazon EC2 Instance [ In My Case I chose RHEL 8 ( Free Tier Edition )].

2) Created key pair needed to communicate with Amazon Instance.

3) Connected with Amazon Instance and installed git, docker and Jenkins. ( Done Manually First also, attached Automated Script in the git repo). 

4) Logged in to Jenkins ( Created user Pranav).

5) Created New Item. Provided Project Name as Application Deployment.

6) On Next Window Selected GitHub Project and Provided Git Project URL under the GitHub Project Section.

7) Next Under the Pipeline Section Selected Option Pipeline Script from SCM. Selected SCM source as Git and Provided Repository URL, provided script path as Jenkinsfile and changed branch from master to main ( In my case Branch is Main ) and saved the Project.

8) Configured Credentials using Pipeline Syntax Section. Selected Sample Step Section and selected 
 “ withCredentials: Bind Credentials to variables. Next Selected Secret Text subsection provided under Bindings Section. Provided Variable name as Dockerpwd. Also added credentials in the add credentials section provided right below Bindings Section.

9) Used Build Now Option. Done. Below are attached. Please test the application by adding “/ with Your-Name” after the application URL.


repository URL: - https://github.com/pranavph/incubyte
 
 
application URL: - http://ec2-13-127-207-225.ap-south-1.compute.amazonaws.com:9000/
  
 Done.
