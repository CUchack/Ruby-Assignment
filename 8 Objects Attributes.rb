class Class

    def attr_accessor_with_history(attr_name)

        attr_name = attr_name.to_s       # make sure it's a string

        attr_reader attr_name            # create the attribute's getter

        attr_reader attr_name+"_history" # create bar_history getter

        class_eval %{
          def #{attr_name}=(val)
            @#{attr_name} = val
            @#{attr_name}_history = [nil] if @#{attr_name}_history.nil?
            @#{attr_name}_history.push(val)
          end
        }

    end

end



class Foo

    attr_accessor_with_history :bar

end

f = Foo.new
f.bar = 1
f.bar = 2
p f.bar
p f.bar_history
f = Foo.new
f.bar = 4
f.bar_history
p f.bar
p f.bar_history
