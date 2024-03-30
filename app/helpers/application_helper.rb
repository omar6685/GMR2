module ApplicationHelper
  def rtl_attribute_if_arabic_locale
    if I18n.locale == :ar
      'dir=rtl'
    else
      'dir=ltr'
    end
  end
end
