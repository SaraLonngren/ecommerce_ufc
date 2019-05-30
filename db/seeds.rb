# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Employee.create(name: 'Admin', salary: 1000, email: 'admin@admin.com', password: '123456')

# Categories
categories = ['Celulares', 'Móveis', 'Informática', 'Eletrodomésticos', 'Jogos']

products = {
  'Celulares' => [
    {
      name: 'iPhone XR Black 64GB',
      price: 4500
    },
    {
      name: 'iPhone XS Rose 64GB',
      price: 3999
    },
    {
      name: 'Xiaomi Mi 9 128GB',
      price: 2100
    },
    {
      name: 'Samsung Galaxy S10 64GB',
      price: 4500
    },
    {
      name: 'LG K11 32GB',
      price: 700
    },
    {
      name: 'Motorola Moto G7 Plus 64GB',
      price: 1799
    },
    {
      name: 'Motorola Moto G7 Power 32GB',
      price: 1299
    }
  ],
  'Móveis' => [
    {
      name: 'Guarda Roupa 3 Portas Amanda Com Espelho Branco - At Home',
      price: 499
    },
    {
      name: 'Guarda Roupa Casal 100% MDF com Espelho Madesa Royale 3 Portas de Correr',
      price: 1299
    },
    {
      name: 'Sofá 3 Lugares Net Rocky Assento Retrátil Suede Capuccino 2,01m (l)',
      price: 599
    },
    {
      name: 'Sofá 4 Lugares Net Confort Assento Retrátil E Reclinável Grafite 2,20m (l)',
      price: 999
    },
    {
      name: 'Cama Box Casal Colchão Molas Ensacadas Com Pillow e Box Courvin Branco BF Colchões 138x188x58cm',
      price: 999
    },
    {
      name: 'Conjunto Cama Box King California Dreams Molas Ensacadas 193x203x71 Colchão + Cama Box',
      price: 1999
    },
    {
      name: 'Kit 2 Poltronas Executiva 1 Lugar Corino Pé Aberto Preto',
      price: 379
    },
    {
      name: 'Poltrona MX Bia Couro Sintético Preto - Matrix',
      price: 239
    },
    {
      name: 'Kit 2 Poltronas Opalla Bege Suede Pés Palito',
      price: 639
    }
  ],
  'Informática' => [
    {
      name: 'Notebook Essentials E30 Intel Core I3 4GB 1TB LED Full HD 15.6'' W10 Cinza Titânio - Samsung',
      price: 1999
    },
    {
      name: 'Notebook Inspiron I15-3567-A15P Intel Core i3 4GB 1TB 15,6" W10 Preto - Dell',
      price: 2099
    },
    {
      name: 'Notebook A315-53-C6CS 8ª Intel Core I5 4GB 1TB LED HD 15.6" - W10 Preto - Acer',
      price: 2369
    },
    {
      name: 'Notebook Dell Inspiron i15-3567-A30P Intel Core 7ª i5 4GB 1TB Tela LED 15.6" Windows 10 - Preto',
      price: 2603
    },
    {
      name: 'Tablet Samsung Galaxy Tab A 10.5 T595 - Preto',
      price: 1499
    },
    {
      name: 'Tablet Samsung Galaxy Tab A SM-T385 16GB 4G Tela 8" Android Quad-Core - Preto',
      price: 949
    },
    {
      name: 'Tablet Samsung Galaxy Tab E T560 8GB Wi-Fi Tela 9.6" Android 4.4 Quad-Core - Preto',
      price: 749
    },
    {
      name: 'Impressora Multifuncional Epson Tanque De Tinta L395 Wi-Fi',
      price: 887
    },
    {
      name: 'Impressora Multifuncional Epson Ecotank L396 Wifi Direct C11cg50302',
      price: 899
    },
    {
      name: 'MacBook Air MQD32BZ/A com Intel Core i5 Dual Core 8GB 128GB SSD 13'' Prata - Apple',
      price: 5199
    },
    {
      name: 'Macbook Air MREA2BZ/A com Intel Core I5 Dual Core 8GB 128GB SSD Prata 13" - Apple',
      price: 9669
    },
    {
      name: 'Imac Apple Tela 21.5 Polegadas Intel Core I5 2.3ghz 8gb 1tb Mmqa2lla',
      price: 9799
    }
  ],
  'Jogos' => [
    {
      name: 'PS4 Slim 1tb + 3 jogos',
      price: 2229
    },
    {
      name: 'Console Xbox One S 1tb + Controle Sem Fio + Game Anthem - Microsof',
      price: 1849
    },
    {
      name: 'Game Battlefield V - PS4',
      price: 109
    },
    {
      name: 'Game Battlefield V - Xbox One',
      price: 109
    },
    {
      name: "Game Marvel's Spider-Man - PS4",
      price: 119
    },
    {
      name: "Game Marvel's Spider-Man - Xbox One",
      price: 119
    },
    {
      name: 'Game Days Gone PS4',
      price: 199
    },
    {
      name: 'Game Days Gone Xbox One',
      price: 199
    },
    {
      name: 'Game Mortal Kombat 11 Br - PS4',
      price: 199
    },
    {
      name: 'Game Mortal Kombat 11 Br - Xbox One',
      price: 199
    },
    {
      name: 'Mouse Gamer G402 Hyperion Fury Ultra-Fast FPS 4.000 DPI - Logitech G',
      price: 99
    },
    {
      name: 'Mouse Gamer Redragon Chroma Cobra M711 Rgb 10000dpi',
      price: 124
    },
    {
      name: 'HD Kingston Ssd Sa400 S37 240gb 6g',
      price: 185
    },
    {
      name: 'Monitor Gamer LED 24" 1ms 144hz Full HD Freesync Widescreen Profissional G2460PF - AOC',
      price: 1199
    },
    {
      name: 'Headset Gamer G933 Sem Fio Surrond Sound 7.1 Artemis Spectrum - Logitech G',
      price: 699
    },
    {
      name: 'Cadeira Gamer Giratória Trevalla TL-CDG-04-5PR Predator Preta/Vermelha',
      price: 749
    }
  ],
  'Eletrodomésticos' => [
    {
      name: 'Geladeira/Refrigerador Consul 2 Portas CRM51 Frost Free Bem Estar 405 Litros - Branco',
      price: 2239
    },
    {
      name: 'Geladeira/Refrigerador Brastemp Duplex 2 Portas BRM57 Frost Free 500L - Branco',
      price: 3298
    },
    {
      name: 'Micro-ondas Philco PME25 25 Litros com Tecla Preparo Rápido Prata Espelhado',
      price: 384
    },
    {
      name: 'Micro-ondas Philco PME31 30 Litros Espelhado',
      price: 431
    },
    {
      name: 'Micro-ondas Brastemp Ative! BMJ38 38 Litros Inox',
      price: 736
    },
    {
      name: 'Fogão De Piso Brastemp 4 Bocas BFO4N Inox - Bivolt',
      price: 787
    },
    {
      name: 'Fogão De Piso Brastemp 4 Bocas BFO4N Branco - Bivolt',
      price: 693
    },
    {
      name: 'Fogão de Piso Agile Glass 4 Bocas Preto Bivolt Atlas',
      price: 698
    },
    {
      name: 'Lavadora de Roupas Brastemp 11kg BWK11 - Branco',
      price: 1428
    },
    {
      name: 'Lavadora de Roupas Electrolux 13kg LAC13 - Branca',
      price: 1459
    },
    {
      name: 'Lavadora de Roupas Consul 9Kg CWB09 - Branca',
      price: 1101
    }
  ]
}


categories.each do |category|
  c = Category.where(name: category, description: category).first_or_create
  puts 'Category ~> ' + c.name
  products[category].each do |product|
    Product.where(name: product[:name]).first_or_create do |p|
      p.update(product.merge(category_id: c.id, description: product[:name]))
    end
    puts 'Product ~> ' + product[:name]
  end
end