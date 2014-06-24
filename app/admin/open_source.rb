ActiveAdmin.register OpenSource do
  index do
    column :title
    column :description
    default_actions
  end

  filter :title
  filter :description

  form do |f|
    f.inputs "Open Sources" do
      f.input :title
      f.input :description
    end
    f.actions
  end
end