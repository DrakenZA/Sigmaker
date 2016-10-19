ActiveAdmin.register Siginfo do
  permit_params :email, :userid,:name, :phonenum, Siglinks_attributes:[:_destroy,:id,:title,:linkpath,:info]

  # index do
  #   selectable_column
  #   column :id
  #
  #   column :userid
  #   column :phonenum
  #   column :links
  #   column :email
  #   actions
  # end
show do
  attributes_table do

  row :userid
  row :name
  row :phonenum
  row :email
end
  panel "Links" do
    table_for siginfo.Siglinks do
      column :title
      column :linkpath
      column :info

  end
end
end

  form do |f|
    f.inputs "Sig Details" do

    f.input :userid
    f.input :name
    f.input :phonenum
    f.input :email


    f.inputs "Links" do

    f.has_many :Siglinks do |slinks|


    slinks.input :title
    slinks.input :linkpath
    slinks.input :info


    if !slinks.object.nil?
      # show the destroy checkbox only if it is an existing appointment
      # else, there's already dynamic JS to add / remove new appointments
      slinks.input :_destroy, :as => :boolean, :label => "Delete?"
    end

    end
    end



    f.actions
  end
end

end
