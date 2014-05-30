ActiveAdmin.register Member do
  filter :first_name
  filter :last_name
  filter :position
  filter :email

  config.per_page = 10
  config.sort_order = "id_asc"

  #customize index page
  index do
    column :id
    column :image do |member|
      image_tag(member.image.url(:thumb))
    end
    column :image_sel do |member|
      image_tag(member.image_sel.url(:thumb))
    end
    column :first_name
    column :last_name
    column :position
    column :email
    default_actions
  end

  #customize form
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
      f.input :first_name, :label => "First Name"
      f.input :last_name, :label => "Last Name"
      f.input :position, :label => "Position"
      f.input :email, :as => :email
      f.input :image, required: false, :label => "Image"
      f.input :image_sel, required: false, :label => "Image(Selected)"
    end
    f.buttons
  end

  #customize show page

  show :title => :member_title do |member|
    attributes_table do
      row :id
      row :first_name
      row :last_name
      row :position
      row :email
      row :image do
        image_tag(member.image.url(:medium))
      end
      row :image_sel do
        image_tag(member.image_sel.url(:medium))
      end
    end
    #active_admin_comments
  end
end
