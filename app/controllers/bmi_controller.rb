class BmiController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_bmi, except: [:index, :new, :create]


  def index
    @bmi = Bmi.all
  end

  def new
    @bmi =Bmi.new
  end

  def show
  end

  def update
  end


  def edit
  end

  def create
    @bmi = Bmi.new(bmi_param)
    body_mass
    @bmi.user = current_user

    if @bmi.save
      redirect_to @bmi
    else
      render :new
    end

  end

  private

  def set_bmi
    @bmi = Bmi.find(params[:id])
  end

  def bmi_param
    params.require(:bmi).permit(:mass, :height)
  end

  def body_mass
    @height = bmi_param[:height].to_f
    @mass = bmi_param[:mass].to_f
    @bmi.bmi  =  ((@mass)/(@height**2)).round(2)
    body_category
  end

  def body_category
    bmi =  @bmi.bmi.to_f
    if bmi < 15
      @bmi.category = 'Very severely underweight'
    elsif bmi >= 15 and bmi <= 16
      @bmi.category  = 'Severely underweight'
    elsif bmi >= 16 and bmi <= 18.5
      @bmi.category  = 'Underweight'
    elsif bmi >= 18.5 and bmi <= 25
      @bmi.category  = 'Normal (healthy weight)'
    elsif bmi >= 25 and bmi <= 30
      @bmi.category  = 'Overweight'
    elsif bmi >= 30 and  bmi <= 35
      @bmi.category  = 'Obese Class I (Moderately obese)'
    elsif bmi > 35 and bmi <= 40
      @bmi.category  = 'Obese Class II (Severely obese)'
    else
      @bmi.category  = 'Obese Class III (Very severely obese)'
    end
  end

end
