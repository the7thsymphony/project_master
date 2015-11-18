class ApplicantController < ApplicationController

  def index

    @applicants = Applicant.all

  end

  def show

    @applicant = Applicant.new

  end

  def destroy
    @applicant.destroy
  end

  end



