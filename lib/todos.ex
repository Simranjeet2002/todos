defmodule Todos do
    def create_todos do
      number_of_tasks = IO.gets("ENTER THE NO OF TASKS : ")
      {number_of_tasks, _q} = Integer.parse(number_of_tasks)
      number_of_tasks
    end
end
