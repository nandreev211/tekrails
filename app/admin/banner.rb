ActiveAdmin.register Banner do
  filter :page_equals, :as => :select, :collection => Page.all.map{|p| [p.page, p.page]}

  config.per_page = 10
  config.sort_order = "id_asc"

  #customize index page
  index do
    column :id
    column :banner do |banner|
      image_tag(banner.banner.url(:thumb))
    end
    column :header
    column :description
    column :page
    default_actions
  end

  #customize form
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
      # f.input :banner, required: false, :label => "Banner Image", :description => "Desc"
      f.input :banner, :as => :file, :label => "Banner Image" #, :hint => f.template.image_tag(f.object.banner.url(:thumb))
      f.input :header, :label => "Header"
      f.input :description, :label => "Description"
      f.input :page, :as => :select, :collection => Page.all.map{|p| [p.page, p.page]}
    end
    f.buttons
  end

  #customize show page
  show do |banner|
    attributes_table do
      row :id
      row :banner do
        image_tag(banner.banner.url(:medium))
      end
      row :header
      row :description
      row :page
    end
    #active_admin_comments
  end
end