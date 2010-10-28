class CmsTag::FieldString < CmsBlock
  
  include CmsTag
  
  def self.regex_tag_signature(label = nil)
    label ||= /\w+/
    /\{\s*cms:field:(#{label}):?(?:string)?\s*\}/
  end
  
  def regex_tag_signature
    self.class.regex_tag_signature(label)
  end
  
  def content=(value)
    write_attribute(:content_string, value)
  end
  
  def content
    read_attribute(:content_string)
  end
  
  def render
    ''
  end
  
end