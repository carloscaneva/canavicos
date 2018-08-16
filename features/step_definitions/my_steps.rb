Given(/^Pagina ingreso de letra$/) do
  visit '/nuevo'
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

When(/^Ingreso letra "(.*?)" (\d+) veces$/) do |letra, arg2|
  fill_in("campo_letra", :with => letra)
click_button("boton_validar")
fill_in("campo_letra", :with => letra)
click_button("boton_validar")
fill_in("campo_letra", :with => letra)
click_button("boton_validar")
fill_in("campo_letra", :with => letra)
click_button("boton_validar")
fill_in("campo_letra", :with => letra)
click_button("boton_validar")
fill_in("campo_letra", :with => letra)
click_button("boton_validar")

end


Then(/^Pantalla de perdedor "(.*?)"$/) do |titulo|
  last_response.should have_xpath("//p[@id=\"resultado\"]") do |t|
  t.should contain(titulo)
  end
end

When(/^Ingresa letra "(.*?)"$/) do |letra|
  fill_in("campo_letra", :with => letra)
  click_button("boton_validar")
end

Then(/^Pantalla de ahorcado con "(.*?)"$/) do |intentos|
  last_response.should have_xpath("//span[@id=\"intentos_realizados\"]") do |t|
  t.should contain(intentos)
  end
end
