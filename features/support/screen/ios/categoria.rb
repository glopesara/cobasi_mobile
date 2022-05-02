# encoding: UTF-8
class CategoriaScreenIos
  def slecionar_categoria(categoria)
    case categoria
    when "Cachorros"
      find_element(accessibility_id: "󰩃 #{categoria} 󰅂").click
    when "Gatos"
      find_element(accessibility_id: "󰄛 #{categoria} 󰅂").click
    when "Pássaros"
      find_element(accessibility_id: "#{categoria} 󰅂").click
    when "Peixes"
      find_element(accessibility_id: "󰈺 #{categoria} 󰅂").click
    when "Outros Pets"
      find_element(accessibility_id: "󰤇 #{categoria} 󰅂").click
    when "Casa e Jardim"
      find_element(accessibility_id: "󰧱 #{categoria} 󰅂").click
    when "Linha Profissional"
      find_element(accessibility_id: "󱃯 #{categoria} 󰅂").click
    when "Marcas"
      find_element(accessibility_id: "󰓻 #{categoria} 󰅂").click
    end
  end

  def slecionar_categoria_detalhe(categoria_datalhes)
    find_element(accessibility_id: "#{categoria_datalhes} 󰅂").click
  end

  def selecionar_servico(servico)
    find_element(accessibility_id: "#{servico} 󰅂").click
  end
end
