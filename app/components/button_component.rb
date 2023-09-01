class ButtonComponent < ViewComponent::Base
  def initialize(hover_color:, bg_color:, text_color:, id:, button_text:)
    @hover_color = hover_color
    @bg_color = bg_color
    @text_color = text_color
    @id = id
    @button_text = button_text
  end
end
