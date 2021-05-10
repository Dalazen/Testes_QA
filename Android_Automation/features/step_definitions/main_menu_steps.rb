Given(/^I land on Home screen$/) do
  find_element(id: "action_search")
  find_element(id: "action_add_favorites")
end

When(/^I press on Menu icon$/) do
  begin
    element = find_element(accessibility_id: "Open navigation drawer")
  rescue
    element = find_element(accessibility_id: "Gaveta de navegação abrir")
  ensure
    element.click
  end
end

Then(/^I should see left side menu$/) do
  begin
    text("Conversor de Unidades")
  rescue
    text("Unit Converter")
  end
end

When(/^I press on My conversions button$/) do
  begin
    text("Meus conversões").click
  rescue
    text("My conversions").click
  end
end

Then(/^I land on My conversions screen$/) do
  begin
    text("Nenhuma conversão pessoal criado ainda")
  rescue
    text("No personal conversion created yet")
  end
end
