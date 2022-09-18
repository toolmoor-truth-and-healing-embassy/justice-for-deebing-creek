require 'yaml'
gallery_path = "assets/img/gallery"

`mogrify  -format gif -path #{gallery_path}/thumbs -thumbnail 100x100 ./#{gallery_path}/*.*`

files = Dir[gallery_path+"/*"].map do |f| 
    f.match(/^.*\/(.*\..*)$/) 
end.compact!.map do |m| 
    m[1] 
end

File.open("./_data/gallery.yml", "w") do |f| 
    f.write(
        files.map do |fname| 
            {
                "file" => fname,
                "thumb" => fname.split(".")[0] + ".gif", 
                "text" => fname.split(".")[0],
            }
        end.to_yaml
    )
end

