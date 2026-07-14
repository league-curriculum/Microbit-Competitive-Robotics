# Micro:bit Robot Rally — task runner.
#
# The course site is Hugo (in site/); the old Jekyll site is sequestered in _old/.
# Run everything through `just <target>`; list targets with `just --list`.
# (Note: the 3D-parts tool lives in tools/render-parts/ — use `just parts`, not
# `npm` from the repo root, which has no package.json.)

# Run the Hugo dev server at http://localhost:1313 (does NOT rebuild 3D parts)
dev:
    hugo server --source site --baseURL http://localhost:1313/ --appendPort=false --navigateToChanged

# Build the 3D Parts: STL + PNG previews from the bookmarks + hand STLs (cached)
parts:
    cd tools/render-parts && npm install --no-audit --no-fund --silent && npm run generate

# Build the full static site into site/public (regenerates 3D parts first)
build: parts
    curik hugo build

# Validate the whole course
validate:
    curik validate course

# Push master to trigger the GitHub Pages deploy (commit your changes first)
deploy:
    git push origin master

# Remove generated artifacts (Hugo output + generated 3D parts)
clean:
    rm -rf site/public site/resources/_gen site/.hugo_build.lock site/static/parts site/content/3d-parts site/data/parts3d.json tools/render-parts/build
