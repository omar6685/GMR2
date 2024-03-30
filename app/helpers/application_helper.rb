module ApplicationHelper
  def rtl_attribute_if_arabic_locale
    if I18n.locale == :ar
      'dir=rtl'
    else
      'dir=ltr'
    end
  end
  def localized_attribute(record, attribute)
    if I18n.locale == :ar
      record.send("#{attribute}_ar")
    else
      record.send(attribute)
    end
  end
end
