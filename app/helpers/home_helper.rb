module HomeHelper
  def level(type,qtd)
    if type == 'deaths'
      if qtd.between?(1,9)
        '1'
      elsif qtd.between?(10,24)
        '10'
      elsif qtd.between?(25,49)
        '25'
      elsif qtd.between?(50,99)
        '50'
      elsif qtd > 99
        '100'
      else
        '0'
      end
    else
      if qtd.between?(1,99)
        '1'
      elsif qtd.between?(100,999)
        '100'
      elsif qtd.between?(1000,9999)
        '1.000'
      elsif qtd.between?(10000,99999)
        '10.000'
      elsif qtd > 99999
        '100.000'
      else
        '0'
      end
    end
  end
end
