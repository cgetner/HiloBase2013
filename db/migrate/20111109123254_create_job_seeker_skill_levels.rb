# coding: UTF-8

class CreateJobSeekerSkillLevels < ActiveRecord::Migration
  def self.up
    create_table :job_seeker_skill_levels do |t|
      t.integer :job_seeker_id
      t.integer :skill_level_id

      t.timestamps
    end
  end

  def self.down
    drop_table :job_seeker_skill_levels
  end
end