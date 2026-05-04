# About
     A simple Rails API for tasks. Each task should has a title and status.
     Exposes endpoints to list tasks, show a single task, and create a task.
     Allows filtering tasks by status. 

# STEPS
- rails db:migrate:status #CHECKS
- rails dbconsole         #CHECKS
- \dt                     #CHECKS
- rails db:drop           #CLEARS DB
- rails g model name feature:DataType feature:DataType
- raild db:create
- raild db:migrate
- rails g controller name
- add action routes
- build action controller's logic
- rails s #run localhost
- open localhost in a browser and check for errors and if the routes work as they should
- test by simulation as seen below in TESTS

# TESTS
curl -X POST http://127.0.0.1:3000/tasks -H "Content-Type: application/json" -d '{"task": {"title": "To start with, clone GH Template for CRUD RESTful api", "status": "done"}}'

curl -X POST http://127.0.0.1:3000/tasks -H "Content-Type: application/json" -d '{"task": {"title": "Write a README with your plan steps, architecture etc", "status": "Done"}}'

curl -X POST http://127.0.0.1:3000/tasks -H "Content-Type: application/json" -d '{"task": {"title": "Create MVC according to README"}}'

http://127.0.0.1:3000/tasks

http://127.0.0.1:3000/tasks/2

http://127.0.0.1:3000/tasks?status=done 