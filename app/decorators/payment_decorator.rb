class PaymentDecorator < BaseDecorator
  def  human_month
  	month.strftime("%B") 
  end
end
