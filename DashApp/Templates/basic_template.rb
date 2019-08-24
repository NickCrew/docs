cheatsheet do
  title 'Sample'               # Will be displayed by Dash in the docset list
  docset_file_name 'Sample'    # Used for the filename of the docset
  keyword 'sample'             # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else
  
  introduction 'intro text appearing at the top'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  #
  # Category 1
  category do
    id 'Windows'  # Must be unique and is used as title of the category

    entry do
      command 'CMD+N'         # Optional
      name 'Create window'    # A short name, can contain Markdown or HTML
      notes 'Some notes'      # Optional longer explanation, can contain Markdown or HTML
    end
  end

  # Category 2
  category do
    id 'Code'
    entry do
      name 'Code sample'
      notes <<-'END'
        ```This a regular codeblock
        ```
        Or anything else **Markdown** or HTML.
      END
    end
  end

  notes 'notes at the end'
end
