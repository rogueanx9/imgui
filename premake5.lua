project "imgui"
    kind "StaticLib"
    language "C++"
    staticruntime "off"
    warnings "off"

    targetdir ("bin/" .. outputDir .. "/%{prj.name}")
    targetdir ("bin-int/" .. outputDir .. "/%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui.cpp",
        "imgui.h",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h"
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "on"

    filter "configurations:Debug"
        runtime "Debug"
        buildoptions "/MDd"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        buildoptions "/MD"
        optimize "speed"

    filter "configurations:Dist"
        runtime "Release"
        buildoptions "/MD"
        symbols "off"
        optimize "speed"
