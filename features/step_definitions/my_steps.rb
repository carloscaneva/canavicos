Given(/^Pagina ingreso de letra$/) do
  visit '/'
end

When(/^Solicita letra "(.*?)"$/) do |letra|
  fill_in("campo_letra", :with => letra)
  click_button("boton_validar")
end

Then(/^Pantalla de ganador "(.*?)"$/) do |titulo|
  last_response.should have_xpath("//p[@id=\"resultado\"]") do |t|
  t.should contain(titulo)
  end
end

Then(/^Pantalla de perdedor "(.*?)"$/) do |titulo|
  last_response.should have_xpath("//p[@id=\"resultado\"]") do |t|
  t.should contain(titulo)
  end
end

