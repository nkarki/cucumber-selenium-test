module NavigationHelpers
  def path_to(page_name)
    case page_name

    when /the home\s?page/
      '/'
    else
      begin
        page_name =~ /the (.*) page/
        path_components = $1.split(/\s+/)

        page_path = path_components.push('path').join('_')
        puts "redirecting to #{page_path}"
        self.send(page_path.to_sym)
      rescue Object => e
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
