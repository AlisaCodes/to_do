require('rspec')
require('task')

describe(Task) do
  before() do
    Task.clear()
  end

  describe("#description") do
    it("lets you give a description") do
      test_task = Task.new("bang it out")
      expect(test_task.description()).to(eq("bang it out"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#save") do
  it ("adds a task to the array") do
    test_task = Task.new("bang it out")
    test_task.save()
    expect(Task.all()).to(eq([test_task]))
    end
  end

  describe(".clear") do
    it("empties out all saved tasks") do
      Task.new("wash the cat").save()
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end
end
