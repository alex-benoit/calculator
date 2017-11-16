class PagesController < ApplicationController
  def calculator
  end

  def result
    match_data = seperate(params[:operation])
    result = calculate(match_data)
    @operation = "#{match_data[1]} #{match_data[2]} #{match_data[3]} = #{result}"
  end

  private

  def seperate(operation)
    return operation.match(/(\d+)([\+-\/x])(\d+)/)
  end

  def calculate(match_data)
    case match_data[2]
    when '+'
      return match_data[1].to_i + match_data[3].to_i
    when '-'
      return match_data[1].to_i - match_data[3].to_i
    when 'x'
      return match_data[1].to_i * match_data[3].to_i
    when '/'
      return match_data[1].to_i.to_f / match_data[3].to_i
    end
  end
end
