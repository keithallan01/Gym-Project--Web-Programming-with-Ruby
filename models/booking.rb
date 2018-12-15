require_relative( '../db/sql_runner' )

class Booking

  attr_reader :id
  attr_accessor :member_id, :class_id, :studio_name

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @studio_name = options['studio_name']
    @member_id = options['member_id'].to_i
    @class_id = options['class_id'].to_i
  end

  def save()
    sql = "INSERT INTO bookings
    (
    studio_name,
    member_id,
    class_id
    )
    VALUES
    (
    $1, $2, $3
    )
    RETURNING *"
    values = [@studio_name, @member_id, @class_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  #
  # def member_id
  #   return @member_id
  # end
  #
  # def class_id
  #   return @class_id
  # end
  #
  # def studio_name
  #   return @studio_name
  # end

end
