function ispackage(mod)
  for f in readdir(Pkg.dir())
    f == mod && return true
  end
  return false
end

function packageinfo(mod)
  renderMD(Markdown.parse(String(read(readmepath(mod)))))
end

function moduleinfo(mod)
  "ho"
end

getmoduleinfo(mod) = ispackage(mod) ? packageinfo(mod) : moduleinfo(mod)