collection @ads
attributes :id, :color, :price, :enginecapacity, :mileage, :created_at, :city
node(:model) {|ad| ad.automodel.name}
node(:mark) {|ad| ad.automark.name}
node(:bodytype) {|ad| Ad::BODYTYPES.invert[ad.bodytype]}
node(:transmission) {|ad| Ad::TRANSMISSION.invert[ad.transmission]}
