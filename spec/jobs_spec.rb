require('rspec')
require('jobs')
require('pry')

describe(Jobs) do
  before() do
    Jobs.clear()
  end

  describe('.all') do
    it('is empty at first') do
      expect(Jobs.all()).to(eq([]))
    end
  end

  describe('#add') do
    it('adds the job info to the job info array') do
      test_job = Jobs.new("McDonalds", "Grill Cook", "Tom Robertson", "GED", "M-F")
      test_job.add()
      expect(Jobs.all()).to(eq([test_job]))
    end
  end

  describe('#previous') do
    it('adds a description of the previous employment to an array of all the job info') do
      test_job = Jobs.new("McDonalds", "Grill Cook", "Tom Robertson", "GED", "M-F")
      expect(test_job.previous()).to(eq("McDonalds"))
    end
  end

  describe('#skills') do
    it('adds a description of your skills') do
      test_job = Jobs.new("McDonalds", "Grill Cook", "Tom Robertson", "GED", "M-F")
      expect(test_job.skills()).to(eq("Grill Cook"))
    end
  end

  describe('#references') do
    it('adds a description of your references') do
      test_job = Jobs.new("McDonalds", "Grill Cook", "Tom Robertson", "GED", "M-F")
      expect(test_job.references()).to(eq("Tom Robertson"))
    end
  end

  describe('#education') do
    it('adds a description of your education level') do
      test_job = Jobs.new("McDonalds", "Grill Cook", "Tom Robertson", "GED", "M-F")
      expect(test_job.education()).to(eq("GED"))
    end
  end

  describe('#availability') do
    it('adds a description of your schedule availability') do
      test_job = Jobs.new("McDonalds", "Grill Cook", "Tom Robertson", "GED", "M-F")
      expect(test_job.availability()).to(eq("M-F"))
    end
  end

  describe('.clear') do
    it('empties out all of the saved job info in the job info array') do
      Jobs.new("McDonalds", "Grill Cook", "Tom Robertson", "GED", "M-F")
      Jobs.clear()
      expect(Jobs.all()).to(eq([]))
    end
  end
end
