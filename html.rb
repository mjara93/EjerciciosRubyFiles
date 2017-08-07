def head_body()
  return "<!DOCTYPE html>\n<html>\n  <head>\n    <meta charset='utf-8'>\n
       <title>prueba</title>\n  </head>\n <body>"
end

def final_body()
  return "</body>\n </html>"
end

def parrafo(parrafo, color = "none")
  pafo = ""
  arr = parrafo.split("\n")
  arr.each do |x|
    pafo += "<p style='background-color:#{color}'>"+ x + "</p>\n"
  end
  return pafo
end
