PaperTrail.config.enabled = true

# Do not limit the number of versions stored
PaperTrail.config.version_limit = nil

# Due to ActionText and Active Storage touching a model on creation,
# which creates an unnecessary empty version, skip storing a new version on touch.
# https://github.com/paper-trail-gem/paper_trail/issues/1465
PaperTrail.config.has_paper_trail_defaults = {
  on: %i[create update destroy]
}
