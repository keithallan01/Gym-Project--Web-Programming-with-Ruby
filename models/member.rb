  require_relative( '../db/sql_runner' )

class Member

  attr_reader :id, :age
  attr_accessor :first_name, :last_name, :address

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @address = options['address']
    @age = options['age'].to_i
  end


  def save()
    sql = "INSERT INTO members
    (
    first_name,
    last_name,
    address,
    age
    )
    VALUES
    (
    $1, $2, $3, $4
    )
    RETURNING id"
    values = [@first_name, @last_name, @address, @age]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM members"
    results = SqlRunner.run(sql)
    return results.map { |member| Member.new( member ) }
  end

  #
  #
  # def first_name
  #   return @first_name
  # end
  #
  # def last_name
  #   return @last_name
  # end
  #
  # def address
  #   return @address
  # end
  #
  # def age
  #   return @age
  # end
  #
  # def full_name
  #   return "#{@first_name} #{@last_name}"
  # end



end
