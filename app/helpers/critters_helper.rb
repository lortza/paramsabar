module CrittersHelper
  def display_collar_checkmark(critter)
    critter.has_collar ? "<center>&#10004;</center>".html_safe : ""
  end #display_collar_checkmark

  def render_critter_surprise_partial(critter)
    if critter.has_collar
      render 'age_surprise'
    else
      render 'color_surprise'
    end
  end #render_critter_surprise_partial

end
