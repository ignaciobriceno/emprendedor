precio = ARGV[0].to_f
usuarios = ARGV[1].to_f
usuarios_premium = ARGV[2].to_f
usuarios_gratuitos = ARGV[3].to_f
gastos = ARGV[4].to_f


if precio>=0 && usuarios >=0 && usuarios_premium >=0 && usuarios_gratuitos>=0 && gastos>=0
   #calculas utilidades
   utilidades = (precio*usuarios_premium*2 - gastos)
else
   puts 'Los argumentos ingresados deben ser números positivos o 0, ejecuta de nuevo el programa'
end


if utilidades>0
   utilidades = 0.65 * utilidades
   puts "tus utilidades son #{utilidades} dólares, es decir el negocio es rentable"
elsif utilidades==0
   puts 'no ganas ni pierdes dinero'
else 
   puts "tus utilidades son #{utilidades} dólares, es decir, pierdes dinero y el negocio no es rentable"
end
