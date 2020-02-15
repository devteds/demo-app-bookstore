BG_COLORS = %w(19191a 425259 111112 01010a 27331a 401c18 0b0912 542c28)
FONT_COLORS = %w(fcfcfc ffffff d6d6d6 fffafa e0e0e0)
FONT_SIZE = %w(50 52 54 56 58 60)

def image_for(title)
    bg_color = BG_COLORS.sample
    font_colors = FONT_COLORS.sample
    font_size = FONT_SIZE.sample
    base_url = "http://placehold.jp"
    "#{base_url}/#{font_size}/#{bg_color}/#{font_colors}/500x500.png?text=#{URI.encode(title)}"
end


Book.destroy_all

20.times do |i|
    title = Faker::Lorem.sentence(3, true, 5)

    Book.create({
        title: title,
        price: Faker::Number.normal(30, 5.5),
        description: "#{title}.\n#{Faker::Lorem.paragraphs(10).join('\n')}",
        image_url: image_for(title)
    })
end
