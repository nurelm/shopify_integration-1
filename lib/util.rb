class Util

  def self.wombat_array objs
    wombat_array = Array.new
    objs.each do |obj|
      wombat_obj = obj.wombat_obj
      if wombat_obj.kind_of?(Array)
        wombat_array += obj.wombat_obj
      else
        wombat_array << obj.wombat_obj
      end
    end
    wombat_array
  end

  def self.shopify_array objs
    shopify_array = Array.new
    objs.each do |obj|
      shopify_array << obj.shopify_obj
    end
    shopify_array
  end

  def self.shopify_apikey wombat_config
    wombat_config['shopify_apikey']
  end

  def self.shopify_password wombat_config
    wombat_config['shopify_password']
  end

  def self.shopify_host wombat_config
    wombat_config['shopify_host']
  end

  def self.manage_inv wombat_config
    if !wombat_config.nil? && (wombat_config['shopify_manage_inv'] == 1 ||
                               wombat_config['shopify_manage_inv'] == 'true' ||
                               wombat_config['shopify_manage_inv'] == 't' ||
                               wombat_config['shopify_manage_inv'] == true)
      return true
    else
      return false
    end
  end

end
