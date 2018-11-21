use_helper Nanoc::Helpers::XMLSitemap
use_helper Nanoc::Helpers::Rendering

require_relative 'cadence_swim_race'

def course(type)
  if type == 25
    'SC'
  else
    'LC'
  end
end
