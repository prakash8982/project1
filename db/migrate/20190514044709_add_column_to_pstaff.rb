class AddColumnToPstaff < ActiveRecord::Migration[5.2]
  def change
    add_column :pstaffs, :phase1, :boolean ,default:false
    add_column :pstaffs, :phase2, :boolean ,default:false
    add_column :pstaffs, :phase3, :boolean ,default:false
    add_column :pstaffs, :type_applicant,:string
  end
end
