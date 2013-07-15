class Country
  COUNTRY_LIST = JSON.parse(File.read(Rails.root.join('country.json')))

  attr_accessor :id, :name

  # Convert raw list of countries to Twitter Typeahead Datum objects
  def self.typeahead_data
    @typeahead_data ||= COUNTRY_LIST.map do |code, name|
      {
        :value => name,
        :tokens => name.split(" "),
        :url => Rails.application.routes.url_helpers.country_path(code)
      }
    end
  end

  # Find a country by its two character ID
  def self.find(id)
    if COUNTRY_LIST.key?(id)
      Country.new(id, COUNTRY_LIST[id])
    else
      raise "No country found with id '#{id}'"
    end
  end

  def initialize(id, name)
    self.id = id
    self.name = name
  end
end
