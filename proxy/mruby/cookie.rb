hout = Nginx::Headers_out.new
if hout["Set-Cookie"] != nil
    sc = hout["Set-Cookie"].split(/^;\s?/)
    hout["Set-Cookie"] = sc.map{|c| "ngx_" + c} 
end