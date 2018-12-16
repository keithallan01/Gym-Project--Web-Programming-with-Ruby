require_relative( '../db/sql_runner' )

class Booking

  attr_reader :id
  attr_accessor :member_id, :activity_id, :studio_name

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @member_id = options['member_id'].to_i
    @activity_id = options['activity_id'].to_i
    @studio_name = options['studio_name']
  end

  def save()
    sql = "INSERT INTO bookings
    (
    studio_name,
    member_id,
    activity_id
    )
    VALUES
    (
    $1, $2, $3
    )
    RETURNING id"
    values = [@studio_name, @member_id, @activity_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM bookings"
    results = SqlRunner.run(sql)
    return results.map { |booking| Booking.new( booking ) }
  end

  def delete_all()
    sql = " DELETE FROM bookings"
    SqlRunner.run(sql)
  end

  def member_id
    return @member_id
  end

  def activity_id
    return @activity_id
  end

  def studio_name
    return @studio_name
  end

end
