require 'dragonfly'
app = Dragonfly[:images]

app.configure_with(:imagemagick)
app.configure_with(:rails)
if Rails.env.production?
  app.configure do |c|
    c.datastore = Dragonfly::DataStorage::S3DataStore.new(
      :bucket_name => 'durex',
      :access_key_id => 'AKIAJB2WWFULISDL5DOA',
      :secret_access_key => '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'
    )
  end
end

app.define_macro(ActiveRecord::Base, :image_accessor)