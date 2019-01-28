require "pry"
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
  }
}

def reformat_languages(languages)
  newhash = {}
  languages.each do |style, langlist|
    langlist.each do |lang, type|
      if newhash[lang]
        newhash[lang][:style] << style
      else
        newhash[lang] = {type: type[:type], :style => [style]}
      end
    end
  end
  newhash
end
