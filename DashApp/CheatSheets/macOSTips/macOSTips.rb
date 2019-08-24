cheatsheet do
  title 'macOS Tips'               # Will be displayed by Dash in the docset list
  docset_file_name 'macOSTips'    # Used for the filename of the docset
  keyword 'macOS'             # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else
  
  introduction 'Assorted bits to improve life on macOS'

  # Appearance and UI Category
  category do
    id 'Appearance'
    entry do
      name 'Enable Subpixel Smoothing for Electron Apps'
      notes <<-'END'
        ```defaults write com.microsoft.VSCode CGFontRenderingFontSmoothingDisabled 0 ```
        ``` defaults write com.microsoft.VSCode.helper CGFontRenderingFontSmoothingDisabled 0 ``` 
        ``` defaults write com.microsoft.VSCode.helper.EH CGFontRenderingFontSmoothingDisabled 0 ``` 
        ``` defaults write com.microsoft.VSCode.helper.NP CGFontRenderingFontSmoothingDisabled 0 ```
        ``` defaults write com.spotify.client CGFontRenderingFontSmoothingDisabled 0 ```
        ```defaults write com.spotify.client.helper CGFontRenderingFontSmoothingDisabled 0```
      END
    end
    entry do
      name 'Add Empty Space/Separator to Dock'
      notes <<-'END'
        ``` defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock ```
     END
   end
  end

  # Behavior Category
  category do
    id 'Behavior'
    entry do
      name 'Disable iTunes Launch when Play-Button is Pressed'
      notes <<-'END'
        ```'launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist'```
      END
    end
    entry do
      name 'Disable TCP Keepalive'
      notes <<-'END'
        ```sudo pmset -b tcpkeepalive 0```
      END
    end
  end

  # Commands
  category do
    id 'Useful Commands'
    entry do
      name 'Flush DNS Cache'
      notes <<-'END'
        ```sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder```
      END
    end
    entry do
      name 'Create .dmg from Folder Contents'
      notes <<-'END'
        ```hdiutil create -volname "VolumeName" -srcfolder /path/to/folder -ov diskImage.dmg```
      END
    end
  end

  # Applications
  category do
    id 'Applications'
    entry do
      name 'Fix Homebrew Depends-On Error'
      notes <<-'END'
        ```/usr/bin/find "$(brew --prefix)/Caskroom/"*'/.metadata' -type f -name '*.rb' -print0 | /usr/bin/xargs -0 /usr/bin/perl -i -pe 's/depends_on macos: \[.*?\]//gsm;s/depends_on macos: .*//g'```
      END
    end
  end

  notes 'Goodbyte'
end
