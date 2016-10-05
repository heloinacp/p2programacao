#-*- coding:utf-8 -*-
class ItenslistagemController < ApplicationController



  def index
    @itens = Item.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ItensReport.new(@itens)
        send_data pdf.render, filename: 'itensListagem.pdf', :width => pdf.bounds.width,
        type: 'application/pdf', disposition: :inline, :page_size => "A4", :page_layout => :portrait
      end
    end
  end
end