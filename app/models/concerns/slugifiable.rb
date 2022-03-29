module Slugifiable
    module InstanceMethods
        def slug
            self.name.split(" ").map {|i|i.downcase}.join("-")
        end
    end

    module ClassMethods
        def find_by_slug(slug)
            self.all.find{|instance|instance.slug == slug}
        end
    end
end
