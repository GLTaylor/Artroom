Hanging.delete_all
Artwork.delete_all
Artist.delete_all
User.delete_all

User.create(
  [
    {
      email: "gin@gmail.com",
      user_name: "ginmule",
      password: "123456"
    },
    {
     email: "camille@hotmail.com",
    user_name: "camilleraiser",
     password: "123456"
   },
    {
     email: "taylor@hotmail.com",
     user_name:  "GLTaylor",
     password: "123456"
   },
    {
     email: "noah@example.com",
     user_name:  "noah",
     password: "123456"
   }
   ]
 )

  ren_hang = Artist.create(
      name: "Ren Hang",
      nationality: "Chinese",
      biography: "Lush backgrounds and playful, provocative nudes characterize Ren Hang’s vibrant photography, which addresses the human form as both subject and medium of expression. Arranging bodies to create patterns and architectural forms, Ren subverted representation of the physical body with unexpected configurations of anatomy, often incorporating plant and animal life. Although Ren said his work was not intentionally political, his art confronts repression of sexuality and queer identities in mainstream Chinese culture, and he was arrested several times for its content. Throughout his career, Ren used an analog camera, shooting friends rather than models, and resisted ascribing meaning to his work. I don’t try to get a message across, I don’t give my works names, I don’t date them. I don’t want to instill them with any vocabulary. I don’t like to explain my photos or work as a whole.",
      birthday: "1987",
      deathday: "2017",
      location: "Beijing, China",
      image: "https://res.cloudinary.com/ginnywhx/image/upload/v1534929390/0_01_Ren_Hang_white_rabbit_gallery.jpg"
  )

  ai_wei_wei = Artist.create(
      name: "Ai Wei Wei",
      nationality: "Chinese",
      biography: "A cultural figure of international renown, Ai Weiwei is an activist, architect, curator, filmmaker, and China’s most famous artist. Open in his criticism of the Chinese government, Ai was famously detained for months in 2011, then released to house arrest. “I don’t see myself as a dissident artist,” he says. “I see them as a dissident government!” Some of Ai’s best known works are installations, often tending towards the conceptual and sparking dialogue between the contemporary world and traditional Chinese modes of thought and production. For Sunflower Seeds (2010) at the Tate Modern, he scattered 100 million porcelain “seeds” handpainted by 1,600 Chinese artisans—a commentary on mass consumption and the loss of individuality. His infamous Coca Cola Vase (1994) is a Han Dynasty urn emblazoned with the ubiquitous soft-drink logo. Ai also served as artistic consultant on the design of the Bird’s Nest stadium for Beijing’s 2008 Olympics, and has curated pavilions and museum exhibitions around the globe.",
      birthday: "1957",
      deathday: ""
  )

  anselm_kiefer = Artist.create(
      name: "Anselm Kiefer",
      nationality: "German",
      biography: "Anselm Kiefer critically engages with myth and memory, referencing totems of German culture and collective history. “Germans want to forget [the past] and start a new thing all the time, but only by going into the past can you go into the future,” he says. Revealing the influence of his tutelage under Joseph Beuys, Kiefer's epic-scaled, dense sculptures and paintings are often exposed to elements like acid and fire, and incorporate materials such as lead, burned books, concrete, thorny branches, ashes, and clothing; famed critic and historian Simon Schama has described his work as “heavy-load maximalism.” Kiefer’s vast-ranging references have included the Black Forest, Richard Wagner’s Ring Cycle, and Caspar David Friedrich’s Romantic landscapes, as well as Kabbalah mysticism, Cold War politics, National Socialist architecture, and Paul Celan’s seminal body of post-Holocaust poetry. Art is difficult, he says. It’s not entertainment.",
      birthday: "1945",
      deathday: ""
  )

  sigmar_polke = Artist.create(
      name: "Sigmar Polke",
      nationality: "German",
      biography: "Characterized by wit and endless inventiveness, Sigmar Polke created an oeuvre that is wildly diverse in its exploration of mediums and materials. Inspired by his fascination with science and alchemy, Polke innovated techniques in painting and photography by manipulating chemical processes. Life in post-war Germany led the artist to establish Capitalist Realism, an ironic exploration of consumerism using the imagery of popular culture and advertising, evident in his 1976 collage on paper Supermarkets aus dem Zyklus, Wir Kleinbürger (translated as “Supermarkets from the Cycle, We Petty Bourgeoisie”), featuring iconic Superman figures shopping in a brand-laden supermarket.",
      birthday: "1941",
      deathday: "2010"
  )

  olafur_eliasson = Artist.create(
      name: "Olafur Eliasson",
      nationality: "Danish-Icelandic",
      biography: "Olafur Eliasson’s art is driven by his interests in perception, movement, embodied experience, and feelings of self. He strives to make the concerns of art relevant to society at large. Art, for him, is a crucial means for turning thinking into doing in the world. Eliasson’s works span sculpture, painting, photography, film, and installation. Not limited to the confines of the museum and gallery, his practice engages the broader public sphere through architectural projects, interventions in civic space, arts education, policy-making, and issues of sustainability and climate change.(from artist's website)",
      birthday: "1967",
      deathday: ""
  )

  ackroyd_harvey = Artist.create(
      name: "Heather Ackroyd & Dan Harvey",
      nationality: "English",
      biography: "Heather Ackroyd and Dan Harvey (b. 1959/1959 England) are internationally acclaimed for creating multi-disciplinary works that intersect art, activism, architecture, biology, ecology and history. Referencing memory and time, nature and culture, urban political ecologies, anthropogenic climate change and environmental degradation, their time-based practice reveals an intrinsic bias towards process and event.  Processes of germination, growth and decay (organic and inorganic), erosion and deposition, feature in artworks that often evolve through extended research in response to people and place, interfacing their profound interest in local ecologies and global environmental concerns with socio-political paradigms. (From the artists' website)",
      birthday: "1959",
      deathday: ""
  )

  jonathan_zawada = Artist.create(
      name: "Jonathan Zawada",
      nationality: "Australian",
      biography: "Jonathan Zawada is a cross-discipline artist best known for his unique approach to art and design. Weaving both analogue and digital techniques, he displays the back and forth interplay between manual physical labour and disembodied digital processes.
      Informed by his early roots in web design, coding and animation, Zawada’s art practice further evolved into graphic design, illustration and art direction serving clients like Bloomburg, Nike, and BMW and now includes object design, sculpture, video, installation and painting. (from the artist's website) ",
      birthday: "1981",
      deathday: ""
  )

  one = Artwork.create(
    title: "Untitled",
    description: "Nudity and naturalism. Humanism and love. For Ren Hang, these universes are tightly intertwined and his photography mirrors that this might be a universal truth.",
    date: "2016",
    category: "Photography",
    medium: "Photography",
    mood: "poetic",
    interest: "eroticism",
    image: "https://res.cloudinary.com/ginnywhx/image/upload/v1534777196/cgamkgygv2dg5znwc1fu.jpg"
  )
  one.artist = ren_hang
  one.save

  two = Artwork.create(
    title: "Untitled",
    description: "Lush backgrounds and playful, provocative nudes characterize Ren Hang’s vibrant photography, which addresses the human form as both subject and medium of expression. Arranging bodies to create patterns and architectural forms, Ren subverted representation of the physical body with unexpected configurations of anatomy, often incorporating plant and animal life. Although Ren said his work was not intentionally political, his art confronts repression of sexuality and queer identities in mainstream Chinese culture, and he was arrested several times for its content. Throughout his career, Ren used an analog camera, shooting friends rather than models, and resisted ascribing meaning to his work. “I don’t try to get a message across, I don’t give my works names, I don’t date them. I don’t want to instill them with any vocabulary. I don’t like to explain my photos or work as a whole.",
    date: "2013",
    category: "Photography",
    medium: "Photography",
    mood: "wild",
    interest: "eroticism",
    image: "https://res.cloudinary.com/ginnywhx/image/upload/v1534845390/ren_hang_2.jpg"
  )
  two.artist = ren_hang
  two.save

  three = Artwork.create(
    title: "Study of Perspective - Tiananmen Square",
    description: "Study of Perspective is a photographic series produced by Ai Weiwei, taking place between 1995 and 2011. Throughout the series, viewers see Ai’s left arm extended forward with the middle finger raised to famous and significant landmarks and backdrops from around the world. These pictures mimic tourist’s photos. His images demand that viewers challenge their own unquestioning acceptance and adherence towards the establishment, institutions, authority, and governments.

    This series speaks out about Ai’s beliefs regarding freedom of speech, empowerment of the people, and democratic values. The first in this series was shot in Tiananmen Square in 1995, where during the 1989 democracy movement protests hundreds to thousands of unarmed protesters were killed. In Study of Perspective – Tiananmen Square, the photo first appears to be a classic tourist photo in which Ai sticks his middle finger up at Tiananmen Square Gate. Other landmarks featured in Ai’s series include the White House in Washington D.C., the Eiffel Tower in Paris, and The Reichstag. The gesture is the focal point of the photo, as the objects that are closer to the eye appear larger, thus his statement is the key point in the photo.

    The series achieved worldwide recognition following Ai posting the images on his blog (2005-2009). In 2011, Ai was arrested and interrogated by the Chinese police regarding the Tiananmen photograph. Following Ai’s detention, other people began to post similar images of themselves on the internet as a signal of solidarity. His work has not only brought attention to a number of social issues but has garnered support and inspired other activities.",
    date: "1995-2011",
    category: "Photography",
    medium: "Gelatin silver print",
    mood: "wild",
    interest: "politics",
    image: "https://res.cloudinary.com/ginnywhx/image/upload/v1534847113/ai_wei_wei_1.jpg",
  )

  three.artist = ai_wei_wei
  three.save

four = Artwork.create(
    title: "Sunflower Seeds",
    description: "Kui Hua Zi (Sunflower Seeds) is an art installation created by contemporary artist and political activist, Ai Weiwei. It was first exhibited at the Tate Modern art gallery in London from October 2010 to May 2011. It is a commentary on the mass production techniques that China caters to Western Countries.

  This massive art installation includes over 100 million porcelain sunflower seeds that cover a 1,000 square metre floor with a depth of 10cm in the Tate Modern's Turbine Hall. The entire artwork weighs around 150 tons. Each seed went through a 30 step procedure, hand painted and fired at 1,300 degrees. This process required more than 1,600 workers over a span of two and a half years in Jingdezhen, a town that is known as the Porcelain Capital, and has produced the imperial porcelain for over a thousand years.

  Sunflower seeds were a common theme in the Chinese Communist Party's political propaganda during Ai's childhood. Leader Mao Zedong would often represent himself as the sun, and the people of China as seeds on sunflowers in artworks. Ai also explains that when he was growing up, even the poorest families in China could share the seeds as a treat. The seeds represent optimism during difficult times.

  The millions of individually created seeds spread across such a wide space are meant to symbolize the vastness of China, and its uniform and precise order. An individual seed is instantly lost among the millions, symbolizing the conformity and censorship of the Chinese Communist Party. The combination of all the seeds represent that together, the people of China can stand up and overthrow the Chinese Communist Party.
  Most of Ai's artworks and projects carry this theme of making the Chinese Government's faults transparent to the rest of the world, as well as encouraging freedom of expression and strength to act. Along with this, the seeds represent China's growing mass production stemming from the consumerist culture, particularly that in the Western world, upon which Chinese exporters rely. The sculpture directly challenges the “Made in China” mantra that China is known for, considering the labor-intensive and traditional method of creating the work. The work triggered inquiries from the viewers of the piece about their society and the effects of consumerism",
    date: "2010",
    category: "Sculptural Installation",
    medium: "Porcelain",
    mood: "meh",
    interest: "money",
    image: "https://res.cloudinary.com/ginnywhx/image/upload/v1534856243/the_unilever_series__ai_weiwei_sunflower_seeds_1.jpg",
  )

  four.artist = ai_wei_wei
  four.save

five = Artwork.create(
    title: "Urd, Verdandi, Skuld (The Norns)",
    description: "Between 1980 and 1983, Kiefer made paintings that revisited images of Hitler’s monumental architecture. Using old photographs and architectural plans, Kiefer transformed symbols of Nazi authority into derelict building-sites. In this work, the vaulted structure contains the unseen presence of the Norns, the three figures of fate in Germanic mythology, named Past, Present and Future. Their names are scratched into the ceiling, while below a glowing fire points to salvation and regeneration. Drawing on the artist’s fascination with Norse folklore and Wagnerian motifs, the work reflects his attempts to reconcile his country’s recent history through the myths of Germanic legend.",
    date: "1983",
    category: "Painting",
    medium: "Oil paint, shellac, emulsion and fibre on canvas",
    mood: "melancholy",
    interest: "death",
    image: "https://res.cloudinary.com/ginnywhx/image/upload/v1534856844/1e9bb03e6624544e5cfbd9571ecdfe90.jpg",
  )

  five.artist = anselm_kiefer
  five.save

six = Artwork.create(
    title: "Untitled(Lapis-Lazuli)",
    description: "Sigmar Polke's 1998 Untitled (Lapis-Lazuli) is a testament to the artist's love of experiment and abrupt stylistic change. For this recent work, Polke abandoned his ironic and mocking Pop images silk-screened on paper to paint an abstract exploration of the colour electric blue using the most unlikely combination of media: resin and tempera. Polke violently applies this most traditional of materials with large gestural brushstrokes in opposition to the carefully mapped precision painting of Renaissance frescoes that was its more habitual use. The thick, glassy layer of industrial resin on the surface counteracts the delicacy of the tempera and introduces a stridently modern finish. The resulting layers of a variety of translucent blue washes give the painting an eerie sense of a visionary apparition or hallucination.

    'Polke's link with painting's history clearly goes far beyond iconography. The two Lapis Lazuli he made for the Nimes exhibition, using a blue pigment prized in the Renaissance, participate in the new deal he has effected at the heart of abstract painting, confusing our received ideas of abstraction by peopling his canvases with puddles and stains suspended between form and informe, with images in the process of becoming, disclosed in part or not at all according to each viewer's fantasy.' (Jean-Pierre Criqui 'Clothes make the canvas - works of artist Sigmar Polke', quoted in ArtForum, November 1994). ",
    date: "1998",
    category: "Painting",
    medium: "Tempera and resin on canvas",
    mood: "Poetic",
    interest: "Nature",
    image: "https://res.cloudinary.com/ginnywhx/image/upload/v1533904063/sigmar_polke_2.jpg",
  )

  six.artist = sigmar_polke
  six.save

seven = Artwork.create(
    title: "The weather project",
    description: "The subject of the weather has long shaped the content of everyday conversation. The eighteenth-century writer Samuel Johnson famously remarked ‘It is commonly observed, that when two Englishmen meet, their first talk is of the weather; they are in haste to tell each other, what each must already know, that it is hot or cold, bright or cloudy, windy or calm.’ In The Weather Project, the fourth in the annual Unilever Series of commissions for the Turbine Hall, Olafur Eliasson takes this ubiquitous subject as the basis for exploring ideas about experience, mediation and representation.

    In this installation, The Weather Project, representations of the sun and sky dominate the expanse of the Turbine Hall. A fine mist permeates the space, as if creeping in from the environment outside. Throughout the day, the mist accumulates into faint, cloud-like formations, before dissipating across the space. A glance overhead, to see where the mist might escape, reveals that the ceiling of the Turbine Hall has disappeared, replaced by a reflection of the space below. At the far end of the hall is a giant semi-circular form made up of hundreds of mono-frequency lamps. The arc repeated in the mirror overhead produces a sphere of dazzling radiance linking the real space with the reflection. Generally used in street lighting, mono-frequency lamps emit light at such a narrow frequency that colours other than yellow and black are invisible, thus transforming the visual field around the sun into a vast duotone landscape. (Tate Museum official description, www.tate.org.uk)",
    date: "2003",
    category: "Scuptural Installation",
    medium: "Monofrequency lights, projection foil, haze machines, mirror foil, aluminium, and scaffolding",
    mood: "Joyful",
    interest: "Nature",
    image: "https://res.cloudinary.com/ginnywhx/image/upload/v1535101225/the_weather_project.jpg",
  )

  seven.artist = olafur_eliasson
  seven.save

eight = Artwork.create(
    title: "Face To Face",
    description: "It takes a little more than a green thumb to turn grass into art, but British artists Heather Ackroyd and Dan Harvey are masters of photosynthetic photography. The duo creates living portraits by projecting negative images on vertical panels of grown grass, directing light in varying concentrations to different areas. The amount of light determines which patches become dark shades of green and which fade to yellowish hues. The result is an organic, biochemical grassterpiece.",
    date: "2012",
    category: "Photography",
    medium: "Chlorophyll, projection, grass",
    mood: "Joyful",
    interest: "Nature",
    image: "https://res.cloudinary.com/ginnywhx/image/upload/v1535101209/grassterpiece.jpg",
  )

  eight.artist = ackroyd_harvey
  eight.save

nine = Artwork.create(
    title: "Dropping a Han Dynasty Urn",
    description: "Dropping a Han Dynasty Urn, an early work by the artist, demonstrates his show-stopping conceptual brilliance, and desire to provoke controversy. Outside his mother's home in Beijing, he dropped and smashed a 2000-year old ceremonial urn. Not only did the artifact have considerable value (the artist paid the equivalent of several thousand US dollars for it), but symbolic and cultural worth. The Han dynasty is considered a defining moment in Chinese civilization. Understandably, antique dealers were outraged, calling Ai's work an act of desecration. Ai countered by saying that General Mao used to tell us that we can only build a new world if we destroy the old one. It was a provocative act of cultural destruction in reference to the erasure of cultural memory in Communist China, an anti-elite society that carefully monitored access to information, especially about its dynastic history. In its literal iconoclasm and spotlight on hypocrisy, this smashed vase embodies the central message Ai would continue to explore.",
    date: "1995",
    category: "Print",
    medium: "Digital Print in three parts",
    mood: "Wild",
    interest: "Politics",
    image: "https://res.cloudinary.com/ginnywhx/image/upload/v1534955744/f718b1423f8a2bd8dba35f9d3a3e80e1.jpg",
  )

  nine.artist = ai_wei_wei
  nine.save

twelve = Artwork.create(
    title: "Lighting of the Sails: Metamathemagical",
    description: "Jonathan Zawada, a former developer, uses light projections and technology to animate The Sydney Opera House for the 2018 Vivid Festival in Sydney. According to the artist, “‘Metamathemagical’ explored the creative act on both the human and the macro scale, from both an individual and a cosmic perspective. It explored themes derived from maths, science, the natural world and the abstract form. Australian flora, fauna, geology were at its core.”",
    date: "2018",
    category: "Technology",
    medium: "Projection, light",
    mood: "Joyful",
    interest: "Tech",
    image: "https://res.cloudinary.com/ginnywhx/image/upload/v1535108656/zawada_real.jpg",
  )

  twelve.artist = jonathan_zawada
  twelve.save


