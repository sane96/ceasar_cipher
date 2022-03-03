def ceasar_cipher(string, shift)
    chr_arr = string.split('')
    shifted_arr = chr_arr.map do |chr|
        if chr.ord.between?(65, 90) 
            chr.ord + shift    
        elsif chr.ord.between?(97, 122)    
            chr.ord + shift
        else
            next
        end                    
    end 
    puts shifted_arr
    
    shifted_text = shifted_arr.map  {|num| num.chr}
    puts shifted_text.join
end    

ceasar_cipher("Hey there", 3)