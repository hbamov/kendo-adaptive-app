# Javascript kendo test 

This test is based on the implementation of a outlook like interface. 
There will be 3 parts in this interface : 
   - web mail 
   - calendar
   - contact list 

You will find in this repository the basic buillding blocks to start the implementation : 
   - datas (in /data) 
   - skeleton of the page (iindex.html)
   - javascript where to drop you code (js/main.js)
   - kendo library and css ( already loaded in the index.html)


## Tasks : 

- load the list of messages in the a kendo grid component: 3 columns (from, subject, date)
      - format the date to be readable 
      - show the message subject in bold when unread 
- when clicking on a line in the grid display the full message under the grid and mark the message as read ( please use kendo template to format the message)
- add a button in the grid line to delete a message
- activate the menu (Inbox, Important, Perso , outbox) by using the kendo Menu widget and allow it to filter the list on message in the grid 
- show how you would dynamicaly activate the tabs for scheduler and contacts dynamicaly only when visited. 
      - implement a simple display of the scheduler kendo widget with the tasks available in data/tasks.js
      - implement a simple list view kendo widget with the data available in data/contacts.js


## List of useful reference : 

- kendo grid : 
      - demo: https://demos.telerik.com/kendo-ui/grid/index
      - api reference : https://docs.telerik.com/kendo-ui/api/javascript/ui/grid
      - guide : https://docs.telerik.com/kendo-ui/controls/data-management/grid/overview
- kendo sheduler :
      - demo: https://demos.telerik.com/kendo-ui/scheduler/index
      - api reference : https://docs.telerik.com/kendo-ui/api/javascript/ui/scheduler
      - guide : https://docs.telerik.com/kendo-ui/controls/scheduling/scheduler/overview
- kendo listview : 
      - demo: https://demos.telerik.com/kendo-ui/listview/index
      - api reference : https://docs.telerik.com/kendo-ui/api/javascript/ui/listview
      - guide : https://docs.telerik.com/kendo-ui/controls/scheduling/listview/overview
- kendo menu : https://demos.telerik.com/kendo-ui/menu/index
- kendo tabstrip : https://demos.telerik.com/kendo-ui/tabstrip/index
- kendo datasource : https://docs.telerik.com/kendo-ui/framework/datasource/overview
- kendo template : https://docs.telerik.com/kendo-ui/framework/templates/overview