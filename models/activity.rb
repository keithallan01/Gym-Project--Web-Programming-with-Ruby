require_relative( '../db/sql_runner' )

class Activity

  attr_reader :id
  attr_accessor :activity_name, :category, :description, :capacity

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @activity_name = options['activity_name']
    @category = options['category']
    @description = options['description']
    @capacity = options['capacity'].to_i
  end

  def save()
    sql = "INSERT INTO activities
    (
      activity_name,
      category,
      description,
      capacity
    )
    VALUES
    (
      $1, $2, $3, $4
    )
    RETURNING id"
    values = [@activity_name, @category, @description, @capacity]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM activities"
    results = SqlRunner.run(sql)
    return results.map { |activity| Activity.new( activity ) }
  end

  def update()
    sql = "UPDATE activities
    SET
    (
      activity_name,
      category,
      description,
      capacity
    ) =
    (
      $1, $2, $3, $4
    )
   WHERE id = $5"
   values = [@activity_name, @category, @description, @capacity, @id]
   SqlRunner.run(sql, values)
  end

  def self.find(id)
  sql = "SELECT * FROM activities
  WHERE id = $1"
  values = [id]
  result = SqlRunner.run(sql, values).first
  activity = Activity.new(result)
  return activity
end

  def delete()
      sql = "DELETE FROM activities
      WHERE id = $1"
      values = [@id]
      SqlRunner.run(sql, values)
    end

  def self.delete_all()
    sql = " DELETE FROM activities"
    SqlRunner.run(sql)
  end

  def members()
    sql = "SELECT members.*
    FROM members
    INNER JOIN bookings
    ON bookings.member_id = members.id
    WHERE bookings.activity_id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map{ |member| Member.new(member) }
  end

  def activity_name
    return @activity_name
  end

  def category
    return @category
  end

  def description
    return @description
  end

  def capacity
    return @capacity
  end

  def available_slots
    return @capacity - members.count
  end

end
