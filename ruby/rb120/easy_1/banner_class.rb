class Banner
  def initialize(message, width=(message.length + 4))
    @message = message
    @width = width - 4
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+-" + ("-" * @width) + "-+"
  end

  def empty_line
    "| " + (" " * @width) + " |"
  end

  def message_line
    "| #{fit_message} |"
  end

  def fit_message
    @message.slice(0, @width).center(@width)
  end
end


banner = Banner.new('To boldly go where no one has gone before.', 80)
puts banner

banner = Banner.new('Hello there', 7)
puts banner
