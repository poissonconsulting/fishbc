<!-- NEWS.md is maintained by https://fledge.cynkra.com, contributors should not edit this file -->

# fishbc 0.3.0

## Chore

- Add ccache to `.gitignore` and `.Rbuildignore`.

- Auto-update from GitHub Actions (#35).

- Auto-update from GitHub Actions (#34).

- Auto-update from GitHub Actions (#33).

- Auto-update from GitHub Actions (#26).

## Continuous integration

- Update ccache-action reference.

- Bump action version.

- Create snapshot update PR against correct branch.

- Add reference to `/apply-patch` workflow in commit message.

- Clarify rationale for not deploying on schedule.

- Only run fledge on pushes to main.

- Tweak fledge workflow and ccache action.

- Cosmetics.

- Bump action versions.

- Install clang-format-21.

- Align fledge workflow.

- Harmonize.

- Test all R versions on branches that start with cran- (#32).

- Install binaries from r-universe for dev workflow (#31).

- Fix reviewdog and add commenting workflow (#30).

- Use workflows for fledge (#29).

- Sync (#28).

- Use reviewdog for external PRs (#27).

- Cleanup and fix macOS (#25).

- Format with air, check detritus, better handling of `extra-packages` (#24).

- Enhance permissions for workflow (#20).

- Permissions, better tests for missing suggests, lints (#19).

- Always use `_R_CHECK_FORCE_SUGGESTS_=false` (#18).

- Correct installation of xml2 (#17).

- Sync (#16).

- Overwrite from actions-sync (#15).

## Testing

- Avoid attaching tibble in tests (#23).

- Fix tests without suggested packages (#22).

- Fix tests without suggested packages (#21).

## Uncategorized

- Merge pull request #39 from poissonconsulting/update-evan-contact-email.

  Update Evan Amies-Galonski email to personal address

- Merge pull request #38 from poissonconsulting/fix-author-orcids.

  Add/correct author ORCID(s) in DESCRIPTION

- Merge pull request #36 from poissonconsulting/add-codeowners.

  Add CODEOWNERS assigning @joethorley

- Ci: Unify fledge.yaml across cynkratemplate and fledge (#86).

- Merge pull request #12 from poissonconsulting/snapshot.

  fix previous merge conflict and add snapshots


# fishbc 0.2.1.9000

- Same as previous version.


# fishbc 0.2.1

- Internal changes only.

# fishbc 0.2.0

- Alberta fish codes added to freshwater fish data.
- Remove cdc code duplicate for Columbia Sculpin.
- Require R >= 3.4.

# fishbc 0.1.0

- Added `fbc_common_name()` to get common names from codes.

# fishbc 0.0.1

- Initial Release
