class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.string :right_eye_sph
      t.string :right_eye_cyl
      t.string :right_eye_axis
      t.string :left_eye_sph
      t.string :left_eye_cyl
      t.string :left_eye_axis
      t.string :both_eyes_add

      t.timestamps
    end
  end
end
