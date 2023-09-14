class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.datetime     :start_time,  null: false
      t.datetime     :finish_time, null: false
      t.string       :place,       null: false
      t.text         :activity
      t.integer      :participant
      t.references   :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
