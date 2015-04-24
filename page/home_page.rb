module Page
  class HomePage
    include PageObject

    page_url 'https://github.com/'

    button 'sign_up_button', css: 'a[href="/join"]'
  end
end
