# Competitive Robotics — task runner.
#
# The course site is Hugo (in site/); the old Jekyll site is sequestered in _old/.
# Run everything through `just <target>`; list targets with `just --list`.

# Run the Hugo dev server at http://localhost:1313
dev:
    hugo server --source site --baseURL http://localhost:1313/ --appendPort=false --navigateToChanged

# Flash a classroom set of micro:bits: pick joystick/cutebot, then hot-swap devices
load:
    python3 microbit-loader/load_microbit.py

# Build the full static site into site/public
build:
    curik hugo build

# Validate the whole course
validate:
    curik validate course

# Push master to trigger the GitHub Pages deploy (commit your changes first)
deploy:
    git push origin master

# Remove generated Hugo artifacts
clean:
    rm -rf site/public site/resources/_gen site/.hugo_build.lock
