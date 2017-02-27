class GreyhoundsController < ApplicationController

  def index
    @greyhounds = Greyhound.all
    respond_to do |format|
      format.html
      format.docx do
        @volume = "1"
        @issue = "1"
        template = Tapir::Reports::Template.new('app/assets/images/kennel_times.docx')
        s = template.output(binding, [])
        send_data s, filename: "kennel_times.docx", type: :docx, disposition: :inline
      end
    end
  end

  def show
    @greyhound = Greyhound.find(params[:id])
    respond_to do |format|
      format.html
      format.docx do
        template = Tapir::Reports::Template.new('app/assets/images/profile.docx')
        replacements =
          [
            ['photo_uri', @greyhound.photo_uri]
          ]
        s = template.output(binding, replacements)
        send_data s, filename: "#{@greyhound.name}_profile.docx", type: :docx, disposition: :inline
      end
    end
  end

end
