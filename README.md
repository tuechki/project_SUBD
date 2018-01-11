# project_SUBD
A school project for databases



There are databases Businesses, Locations, Services, Users, LocationsServices, UsersBusinesses and WorkingTime.

  Every Business can have multiple locations and services. Using BusinessId in Locatins and Services we can have multiple records for one Business with different Locations and Services.
  
  Locations can have multiple services and Services can have multiple locations that is why additional table is used LocationsServices making many to many connection.
  
  Every business can have multiple users and every user can be connected to more than one business, that is why another additional table is created called UsersBusinesses. 
  When a user connects to a business a new record in generated showing the particular user(by using UserId) and the business(BusinessId) to which the user has been connected. By the column permission we can state what are the permissions of this user to this business. Permissions can be multiple:<br>
  __Admin(Can manipulate all the information related to the business)<br>
  __Employee(Can manipulate only the information in the business related to him/herself and is shown as employee in this particular business)<br>
  __Admin&Employee(Can manipulate all the information related to the business and simulatnously is an employee in this business).
  
  In WorkingTime we can set working time for a particular location or for particular user. For wvery location or user there will ne a new record for every working day. If there is a rest during the working day, every beginning hour of the rest will be EndHour for the record in the WorkingTime and the time when the rest ends will be the time when the work starts again....yeah, I hate it too :).
