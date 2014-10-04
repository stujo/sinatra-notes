module RecordLabel
  module Searchable

    class SearchableException < Exception
    end


    def self.extended(mod)
      mod.instance_eval do
        def self.searchable_attributes= attribute_names
          @searchable_attributes = attribute_names
        end

        def self.searchable_attributes
          @searchable_attributes
        end

        scope :searchable, -> (q_search_term) {

          raise SearchableException, 
            "searchable_attributes= not set for #{self} after extending Searchable" if searchable_attributes.nil?

          unless q_search_term.empty?
            where(searchable_attributes.map {|attribute|
                        "(#{attribute} LIKE ('%' || :query || '%'))"
            }.join(" OR ") , {query: q_search_term})
          else
            none
          end
        }
      end
    end
  end
end


# users=User.arel_table
# User.where(users[:style].matches("%#{search}%").or(users[:construction].matches("%#{search}%")))
