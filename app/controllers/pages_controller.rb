class PagesController < ApplicationController
  def batman
  end
  def superman
      
  end
  def batman_vs_superman
      @batman=Batman.all.count
      @superman=Superman.all.count
  end
  def save_batman
    if params[:name].present? && params[:email].present?
        @batman=Batman.new(name: params[:name],email: params[:email]) 
        @batman.save
        redirect_back(fallback_location: root_path, notice:"Voto Guardado Correctamente" ) 
    else    
        redirect_back(fallback_location: root_path, alert: "Complete todos los campos")
    end
  end
  def save_superman
    if params[:name].present? && params[:email].present?
        @batman=Superman.new(name: params[:name],email: params[:email]) 
        @batman.save
        redirect_back(fallback_location: root_path, notice:"Voto Guardado Correctamente" ) 
    else    
        redirect_back(fallback_location: root_path, alert: "Complete todos los campos")
    end
  end
end
