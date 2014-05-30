ActiveAdmin.register Message do
  actions :show, :index
  # disable :destroy, :new, :create, :edit, :update,

  filter :name
  filter :email
  filter :message
  filter :created_at, :label => 'Received Date'

  config.per_page = 10
  config.sort_order = "id_asc"

  #customize index page
  index do
    column :id
    column :name
    column :email
    column :message
    column "Received Date", :created_at
    default_actions
  end

  #customize show page
  show :title => :name do |member|
    attributes_table do
      row :id
      row :name
      row :email
      row :message
      row :received_date do
        member.created_at
      end
    end
  end

end
