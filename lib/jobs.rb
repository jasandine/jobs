class Jobs

  @@all_job_info = []

  define_singleton_method(:all) do
    @@all_job_info
  end

  define_singleton_method(:clear) do
    @@all_job_info = []

  end

  define_method(:initialize) do |previous, skills, references, education, availability|
    @previous = previous
    @skills = skills
    @references = references
    @education = education
    @availability = availability

  end

  define_method(:previous) do
    @previous
  end

  define_method(:skills) do
    @skills
  end

  define_method(:references) do
    @references
  end

  define_method(:education) do
    @education
  end

  define_method(:availability) do
    @availability
  end

  define_method(:add) do
    @@all_job_info.push(self)
  end

end


# define_method(:add) do
#
#   # @@all_job_info.push(self)
#
#
#   @@all_job_info.push(@previous)
#   @@all_job_info.push(@skills)
#   @@all_job_info.push(@references)
#   @@all_job_info.push(@education)
#   @@all_job_info.push(@availability)
#
# end
