class Task
  @@all_tasks = []

  define_method(:initialize) do |input|
    @description = input
  end

  define_method(:get_description) do
    @description
  end

  define_singleton_method(:all) do
    @@all_tasks
  end

  define_method(:save) do
    @@all_tasks.push(self)
  end

  define_singleton_method(:clear) do
    @@all_tasks = []
  end
end
