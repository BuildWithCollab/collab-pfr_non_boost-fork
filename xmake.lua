set_languages("c++17")

target("pfr")
    set_kind("headeronly")
    add_headerfiles("include/(pfr/**.hpp)")
    add_headerfiles("include/(pfr.hpp)")
    add_includedirs("include", {public = true})
