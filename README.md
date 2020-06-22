About tudat-resources
=====================

Home: http://tudat.tudelft.nl/

Package license: BSD

Feedstock license: BSD 3-Clause

Summary: A C++ platform to perform astrodynamics and space research



Current build status
====================


<table><tr>
    <td>CircleCI</td>
    <td>
      <a href="https://circleci.com/gh/tudat-team/tudat-resources-feedstock">
        <img alt="Linux" src="https://img.shields.io/circleci/project/github/tudat-team/tudat-resources-feedstock/master.svg?label=Linux">
      </a>
    </td>
  </tr><tr>
    <td>Travis</td>
    <td>
      <a href="https://travis-ci.com/tudat-team/tudat-resources-feedstock">
        <img alt="macOS" src="https://img.shields.io/travis/com/tudat-team/tudat-resources-feedstock/master.svg?label=macOS">
      </a>
    </td>
  </tr><tr>
    <td>Appveyor</td>
    <td>
      <a href="https://ci.appveyor.com/project/tudat-team/tudat-resources-feedstock/branch/master">
        <img alt="windows" src="https://img.shields.io/appveyor/ci/tudat-team/tudat-resources-feedstock/master.svg?label=Windows">
      </a>
    </td>
  </tr>
  <tr>
    <td>Linux_ppc64le</td>
    <td>
      <img src="https://img.shields.io/badge/ppc64le-disabled-lightgrey.svg" alt="ppc64le disabled">
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-tudat--resources-green.svg)](https://anaconda.org/tudat-team/tudat-resources) | [![Conda Downloads](https://img.shields.io/conda/dn/tudat-team/tudat-resources.svg)](https://anaconda.org/tudat-team/tudat-resources) | [![Conda Version](https://img.shields.io/conda/vn/tudat-team/tudat-resources.svg)](https://anaconda.org/tudat-team/tudat-resources) | [![Conda Platforms](https://img.shields.io/conda/pn/tudat-team/tudat-resources.svg)](https://anaconda.org/tudat-team/tudat-resources) |

Installing tudat-resources
==========================

Installing `tudat-resources` from the `tudat-team` channel can be achieved by adding `tudat-team` to your channels with:

```
conda config --add channels tudat-team
```

Once the `tudat-team` channel has been enabled, `tudat-resources` can be installed with:

```
conda install tudat-resources
```

It is possible to list all of the versions of `tudat-resources` available on your platform with:

```
conda search tudat-resources --channel tudat-team
```




Updating tudat-resources-feedstock
==================================

If you would like to improve the tudat-resources recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`tudat-team` channel, whereupon the built conda packages will be available for
everybody to install and use from the `tudat-team` channel.
Note that all branches in the tudat-team/tudat-resources-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://conda.io/docs/user-guide/tasks/build-packages/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://conda.io/docs/user-guide/tasks/build-packages/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================


