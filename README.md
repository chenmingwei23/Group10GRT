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

2. After entering into a game, it would shows the discussion

3. people who already login can post in the forum.

4. people who already login can reply other posts


#### The Streams part ####

Functions:

1. Using the API offered by YouTube live streams to show the latest game stream

2. Can be set by administrator

3. Show ads behind live frames to make money for this website


#### The Scores part ####

Functions:

1. Users can see game scores clearly.

2. Users can login from this page.

3. Users can see news related to the games.

4. Users can view game highlights from this page.


#### The News part ####

Functions:

1. User can navigate to other sections via a top navigation bar

2. User can search relative news via a search bar

3. User can look through news in different pages via a bottom navigation bar

4. User can see the abstract of news and what time the news is posted

5. User can see the details of news 


#### The Marking part ####

Functions:

1. Accept, store user ratings for each piece of content. Update overall rating on main page

2. Includes commentary on overall tournaments and matches 

3. Display new matches and their score

4. Multiple tournament access through hyperlinks


#### The Login part ####

Functions:

1. Advertisement bars should stop in the same place.

2. Advertisement bar can be closed by users

3. Advertisement bars can disappear after a specified period of time.

4. When users click the advertisement bar, browser should open a new page link to advertisement


Note: **

1. Eclipse do well Tomcat V9.0 in Servers before importing the project, otherwise there may be servlet error.

2. If the 'config' folder is not like the 'project structure', you need to select 'Build Path' =&gt by right-clicking 'config';
'Use as Source Folder' added, otherwise the configuration file cannot be loaded.

3. If you need to display the image, change the image address of the data.

