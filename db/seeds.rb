product = Product.create({name:"15 inch MacBook Pro", price:"2400", description:"With eighth-generation Intel Core processors, MacBook Pro reaches new heights in compute performance. The 15‑inch model now features a 6‑core Intel Core i9 processor that works up to 70 percent faster than the previous generation, enabling up to 4.8GHz Turbo Boost speeds. And a quad‑core processor on the 13‑inch MacBook Pro with Touch Bar now makes it up to twice as fast as the previous generation. So when you’re powering through pro‑level processing jobs like compiling code, rendering 3D models, adding special effects, layering multiple tracks, or encoding video, you’ll get everything done. Faster.", image_url:"https://apple.insidercdn.com/gallery/26933-39261-2018-15-Inch-MacBook-Pro-xl.jpg", instock:" ", supplier_id:"1"})

product = Product.create({name:"Hp Spectre -13T", price:"1030", description:"Experience what the laptop was always meant to be. By bringing powerful, all-day performance and a stunning FHD[1] touchscreen to a seductively thin and exceptionally crafted metal and carbon fiber design, the Spectre laptop is almost too good to be true.As elegant as it is unprecedented, the ultra-thin Spectre Laptop fuses up to 11 hours and 15 minutes of battery life[2] with Fast Charge, and an 8th Gen Intel® Core™ i Quad Core processors[3] for remarkable performance.", image_url:"https://pisces.bbystatic.com/image2/BestBuy_US/Gallery/section5-img2-11487.jpg", instock:"", supplier_id:"2"})

product = Product.create({name:"Lenovo ThinkPad X1 Yoga(3rd Gen)", price:"1504", description:"The new 8th generation Intel® Quad Core™ CPUs boost performance 35% over the previous generation. Memory is even faster too with LPDDR3. What's more, when you add in the global LTE-A (optional)* card, you can keep your ThinkPad X1 Yoga connected with or without WiFi. Plus, if you opt for the IR camera, it includes Glance by Mirametrix®, which merges face-, eye-, and gaze-tracking, resulting in a more intuitive and productive interaction by automatically focusing the cursor and shifting windows with just a move of your eye!", image_url:"https://zdnet4.cbsistatic.com/hub/i/2018/06/04/59db08c1-61c9-43c6-a18b-bb39145d9148/5f69e5c08ed4abaad7861f697050178d/tp-x1-yoga-main-2.jpg", instock:"", supplier_id:"3"})

product = Product.create({name:"Dell XPS 15", price:"1500", description:"Upgraded with a 256GB solid state drive for incredibly fast performance. Featuring Dell Cinema with incredible color, sound, and streaming. This includes an 8th Generation Intel® Core™ i7-8750H Processor (9M Cache, up to 4.1 GHz, 6 Cores)", image_url:"https://www.bhphotovideo.com/images/images1500x1500/dell_xps9570_7061slv_xps_i7_8750h_16gb_512ssd_1402918.jpg ", instock:"", supplier_id:"4"})

product.save


supplier = Supplier.create({name:"Kstar", email:"kstar@gmail.com", phone_number:"8089338999"})

supplier = Supplier.create({name:"Logo", email:"logo25@gmail.com", phone_number:"8476558080"})

supplier.save