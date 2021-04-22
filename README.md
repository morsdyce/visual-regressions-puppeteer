# Visual regression for fe-ui-core

This is a docker base image for visual regression testing against storybook.

This image contains a working chrome installation (via puppeteer) which runs via storycap in parallel to save screnshots to a local volume.

### How to run
You must mount a directory to `/opt/integration` with the following:
1. A storybook build in `integration/storybook-build`
2. screenshot directory in `integration/__screenshots__`

a full command should look like this:
`docker run --rm -v integration:/opt/integration fe-ui-core-visual-regressions`
