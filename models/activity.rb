require_relative( '../db/sql_runner' )

class Activity

  attr_reader :id
  attr_accessor :activity_name, :category

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @activity_name = options['activity_name']
    @category = options['category']
  end

  def save()
    sql = "INSERT INTO activities
    (
      activity_name,
      category
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@activity_name, @category]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM activities"
    results = SqlRunner.run(sql)
    return results.map { |activity| Activity.new( activity ) }
  end


  def activity_name
    return @activity_name
  end

  def category
    return @category
  end
end
