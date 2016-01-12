module Greeb::ParserConfig extend self
  #symbol by :name key be utilized as default value of :type key
  CONFIG = [
    {name: :url,          regexp: %r{\b(([\w-]+://?|www[.])[^\s()<>]+(?:\([\p{L}\w\d]+\)|([^.\s]|/)))\.*}i},
    {name: :email,        regexp: /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i},
    {name: :username,     regexp: %r{\@[a-z\_\.\-\d]+}i},
    # {name: :li,           regexp: /([\p{L}]+ ли)\b/u},
    {name: :ni,           regexp: /(н[ие] [\p{L}]+)\b/iu},
    # {name: :Bbl,          regexp: /([\p{L}]+ бы?)\b/u},
    # {name: :geg,          regexp: /([\p{L}]+ жеж?)\b/u},
    # {name: :ka,           regexp: /([\p{L}]+[\- ]ка)\b/u},
    # {name: :to,           regexp: /([\p{L}]+[\- ]то)\b/u},
    {name: :taki,         regexp: /(вс[её] ?- ?таки)\b/u},
    {name: :date,         regexp: /(\d?\d[\.\/]\d?\d[\/ \.]\d{4}|\d?\d[\/ \.]\d?\d[\/ \.]\d{2})/},
    {name: :date2,        regexp: /(\d?\d[\/ \.](янв|фев|мар|апр|ма[яй]|июн|июл|авг|сент|окт|ноя|дек)[\p{L}]{0,9}[\/ \.](\d{4}|\d{2}))/, type: :date},
    {name: :time,         regexp: /\b(|[0-2]?\d):[0-6]\d(:[0-6]\d){0,1}\b/i},
    {name: :happiness,    regexp: /[\:\=\%\;][\-]?[D\)]+/u},
    {name: :sad,          regexp: /[\:\=\%\;][\-]?\(+/u},
    {name: :abbrev,       regexp: /\b((-{0,1}\p{L}\.)*|(-{0,1}\p{L}\. )*)-{0,1}\p{L}\./i},
    {name: :html,         regexp: /<(.*?)>/i}
  ]
end