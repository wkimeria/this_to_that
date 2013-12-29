FactoryGirl.define do
  factory :puzzle do
    start_word 'FROG'
    end_word  'BRAT'
    words '["FROG","FRAG","FRAT","BRAT"]'
    length 4
    score 15
  end
end