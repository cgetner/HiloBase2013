# coding: UTF-8

class CreateJobSeekerWorkenvQuestions < ActiveRecord::Migration
  def self.up
    create_table :job_seeker_workenv_questions do |t|
      t.integer :job_seeker_id
      t.integer :workenv_question_id
      t.integer :score

      t.timestamps
    end
  end

  def self.down
    drop_table :job_seeker_workenv_questions
  end
end