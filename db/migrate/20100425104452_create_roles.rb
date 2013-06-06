# coding: UTF-8

class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles, :options => "ENGINE=InnoDB" do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end