defmodule Todos do
  def add_task(task_list \\ [],number_of_tasks \\ 1) do
   list= for i <- 1..number_of_tasks do
      task = IO.gets("ENTER TASK #{i} : ")
      String.trim(task)
    end
    task_list ++ list
  end
    def create_todos() do
      number_of_tasks = IO.gets("ENTER THE NO OF TASKS : ")
      {number_of_tasks, _q} = Integer.parse(number_of_tasks)
      add_task([],number_of_tasks)
    end
    def contains_task?(task_list,task) do
      Enum.member?(task_list,task)
    end
    def complete_todo(task_list,task) do
      if(contains_task?(task_list,task)) do
        List.delete(task_list,task)
      end
    else
      :not_found
    end
    def search_word?(task_list , word) do
      for task <-task_list , String.contains?(task,word) do
        task
      end
    end

end
