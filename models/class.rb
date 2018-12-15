require_relative('../db/sql_runner')

class Class

attr_reader :id
attr_accessor :class_name, :category

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @class_name = options['class_name']
    @category = options['category']
  end

  def save()
    sql = "INSERT INTO class (
    class_name,
    category)
    VALUES(
    $1, $2
    ) RETURNING *"
    values = [@class_name, @category]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def class_name
    return @class_name
  end

  def category
    return @category
  end

end
