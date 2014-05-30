ActiveAdmin.register Work do
  filter :name
  filter :url
  filter :date
  #filter :avatar

  config.per_page = 10
  config.sort_order = "id_asc"

  #customize index page
  index do
    column :id
    column :name
    column :description
    column :url do |member|
      link_to member.url, member.url
    end
    column :date
    default_actions
  end

  #customize form
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
      f.input :name, :label => "Project Name"
      f.input :description, :label => "Project Description"
      f.input :url, :label => "Project Url", :as => :url
      f.input :date, :as => :datepicker
      f.input :portfolio, required: false, :label => "Portfolio"
    end
    f.buttons
  end

  #customize show page
  show do |work|
    attributes_table do
      row :id
      row :name
      row :description
      row :url
      row :date
      row :image do
        image_tag(work.portfolio.url(:thumb))
      end
    end
    #active_admin_comments
  end
end