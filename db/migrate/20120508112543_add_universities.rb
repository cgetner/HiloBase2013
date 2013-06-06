class AddUniversities < ActiveRecord::Migration
  def up
    sql_path = File.join(Rails.root, "public/sql_files/universities.sql")
    sql_statement = File.read(sql_path).split(";")
    sql_statement.each do |sql|
      begin
        ActiveRecord::Base.connection.execute(sql)
      rescue ActiveRecord::ActiveRecordError
      end
    end
  end

  def down
  end
end
