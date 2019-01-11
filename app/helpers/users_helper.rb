module UsersHelper
    def define_image
        if resource.avatar.attached? 
            image_tag(resource.avatar.variant(resize: "150x150"))
        elsif resource.image
            image_tag(resource.image) 
        else
            value_without_image = t('helper.without_image').html_safe
        end
    end
end
