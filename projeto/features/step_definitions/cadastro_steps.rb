Dado('que eu entrei na página de login') do
    visit 'https://demodirectory.com/profile/login.php'
end
  
E ('seleciono não sou um membro') do
    find('a[class = "link not-member"]').click
end
  
Quando("faço registro como {string}, {string}, {string} e {string}") do |first_name, last_name, email, password|
    @nome_inteiro = (first_name + " " + last_name)
    find('#first_name').set first_name
    find('#last_name').set last_name
    find('#username').set email
    find('#password').set password
    click_button 'Register'
end
  
Então('devo ser registrado com sucesso') do
    expect(page).to have_content ("Welcome, " + @nome_inteiro)
end