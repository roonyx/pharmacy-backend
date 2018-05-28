class OrdersController < ApplicationController
  def create
    pdf = Prawn::Document.new

    pdf.font_size(25) { pdf.text "Order #{Time.now}" }

    params[:order].each do |ingredient|
      pdf.text ingredient['name']
      pdf.text ingredient['percentage'].to_s + '%'
      pdf.text ingredient['description']
      pdf.move_down 20
    end

    send_data pdf.render,
              filename: 'order.pdf',
              type: 'application/pdf',
              disposition: 'inline'
  end
end
