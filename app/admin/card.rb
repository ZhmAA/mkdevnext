ActiveAdmin.register Card do

  index do
  	id_column
    column :original_text
    column :translated_text
    column :review_date
    column :block_id
    column :user_id
    actions
  end

  filter :user
  filter :block
  filter :original_text
  filter :translated_text
  filter :review_date

  form do |f|
    f.inputs do
      f.input :original_text
      f.input :translated_text
      f.input :review_date
      f.input :block
      f.input :user_id
    end
    f.actions
  end

end
