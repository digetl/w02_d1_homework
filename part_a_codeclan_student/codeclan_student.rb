class CodeClanStudent
    
    attr_accessor :student_name, :student_cohort

    def initialize(student_name, student_cohort)
        @student_name = student_name
        @student_cohort = student_cohort
    end

    def student_can_talk(talk)
      return talk
end

def favourite_language(language)
    return "I love #{language}"
end

end
