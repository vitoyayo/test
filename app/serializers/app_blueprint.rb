class AppBlueprint < Blueprinter::Base
    identifier :id
    
    view :index do
        fields :id, :name, :description 
    end   
   
  end