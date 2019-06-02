project('libpng', 'c', version : '1.6.37', license : 'libpng')

# Based on https://raw.githubusercontent.com/mesonbuild/libpng/1.6.35/meson.build

png_versions = meson.project_version().split('.')
png_major_version = png_versions[0]
png_minor_version = png_versions[1]
png_micro_version = png_versions[2]
png_libname = 'png@0@@1@'.format(png_major_version, png_minor_version)
png_libversion = '@0@@1@.@2@.0'.format(png_major_version, png_minor_version, png_micro_version)

cc = meson.get_compiler('c')

include = include_directories('.')
zlib_dep = dependency('zlib', fallback : ['zlib', 'zlib_dep'])

c_args = []

if host_machine.system() == 'windows' and get_option('default_library') != 'static'
    c_args += ['-DPNG_BUILD_DLL']
endif

libpng_deps = [
    zlib_dep,
    cc.find_library('m', required : false),
]

libpng = library(png_libname, [
        'arm/arm_init.c',
        'arm/filter_neon_intrinsics.c',
        'arm/palette_neon_intrinsics.c',
        'png.c',
        'pngerror.c',
        'pngget.c',
        'pngmem.c',
        'pngpread.c',
        'pngread.c',
        'pngrio.c',
        'pngrtran.c',
        'pngrutil.c',
        'pngset.c',
        'pngtrans.c',
        'pngwio.c',
        'pngwrite.c',
        'pngwtran.c',
        'pngwutil.c',
    ],
    version : png_libversion,
    dependencies : libpng_deps,
    c_args : c_args,
    install : false,
    build_by_default : false,
)

configure_file(
    input : 'scripts/pnglibconf.h.prebuilt',
    output : 'pnglibconf.h',
    copy : true,
    install : false
)

png_dep = declare_dependency(
    include_directories : include,
    link_with : libpng,
    dependencies : libpng_deps,
)
