ActiveAdmin.register Hospital do
  permit_params :rank, :name, :url, :country, :city

  index do
    selectable_column
    id_column
    column :rank
    column :name
    column :url
    column :country
    column :city
    actions
  end

  filter :rank
  filter :name
  filter :country
  filter :city

  form do |f|
    f.inputs do
      f.input :rank
      f.input :name
      f.input :url
      f.input :country
      f.input :city
    end
    f.actions
  end
end
