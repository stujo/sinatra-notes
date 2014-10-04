module RecordLabel
  module Searchable
    def self.extended(mod)
      puts "Addings searchable to #{mod}"

      def mod.searchable_attributes= attribute_names

        puts "Settings searchable_attributes to #{attribute_names} on #{self}"

        @searchable_attributes = attribute_names
      end

      def mod.searchable_attributes
        @searchable_attributes
      end

      mod.scope :searchable, -> (q_search_term) {
        mod.where(mod.searchable_attributes.map {|attribute|
                    "(#{attribute} LIKE ('%' || :query || '%'))"
        }.join(" OR ") , {query: q_search_term})
      }
    end
  end
end


# users=User.arel_table
# User.where(users[:style].matches("%#{search}%").or(users[:construction].matches("%#{search}%")))