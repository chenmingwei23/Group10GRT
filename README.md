# # #

#### The discussion part

The forum is built by String MVC+Mybatis+JSP, and the page is mainly written by Bootstrap, which is used as the SSM basic project.


Installation instructions

Project environment configuration:
- JavaSDK: 1.8.0 comes with _122
- the Eclipse:
Eclipse IDE for Enterprise Java Developers.
Version: the 2019-06 (4.12.0)
The Build id: 20190614-1200
- Tomcat: v9.0
- Web. XML: 4.0
- MySQL: 8.0.16

Functions: 

1. In the forum home, choose which specific games discussion.  

   ![image-20201108225433675](/Users/jiyan/Library/Application Support/typora-user-images/image-20201108225433675.png)

2. After entering into a game, it would shows the discussion

   ![image-20201108225450500](/Users/jiyan/Library/Application Support/typora-user-images/image-20201108225450500.png)

3. people who already login can post in the forum.

   ![image-20201108225502940](/Users/jiyan/Library/Application Support/typora-user-images/image-20201108225502940.png)

4. people who already login can reply other posts

   ![image-20201108225514705](/Users/jiyan/Library/Application Support/typora-user-images/image-20201108225514705.png)

Note: **

1. Eclipse do well Tomcat V9.0 in Servers before importing the project, otherwise there may be servlet error.

2. If the 'config' folder is not like the 'project structure', you need to select 'Build Path' =&gt by right-clicking 'config';
'Use as Source Folder' added, otherwise the configuration file cannot be loaded.

3. If you need to display the image, change the image address of the data.
