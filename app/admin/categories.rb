ActiveAdmin.register Category, as: 'Basic Categories' do
  menu :parent => "Misc. Resources"

  actions :index, :create, :new
end
