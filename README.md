About tudat-resources
=====================

Home: http://tudat.tudelft.nl/

Package license: BSD

Feedstock license: [BSD-3-Clause](https://github.com/tudat-team/tudat-resources-feedstock/blob/master/LICENSE.txt)

Summary: A resource manager aimed towards astrodynamics and space research.

Current build status
====================


<table>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/tudat-team/feedstock-builds/_build/latest?definitionId=4&branchName=master">
            <img src="https://dev.azure.com/tudat-team/feedstock-builds/_apis/build/status/tudat-resources-feedstock?branchName=master">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux_64</td>
              <td>
                <a href="https://dev.azure.com/tudat-team/feedstock-builds/_build/latest?definitionId=4&branchName=master">
                  <img src="https://dev.azure.com/tudat-team/feedstock-builds/_apis/build/status/tudat-resources-feedstock?branchName=master&jobName=linux&configuration=linux_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64</td>
              <td>
                <a href="https://dev.azure.com/tudat-team/feedstock-builds/_build/latest?definitionId=4&branchName=master">
                  <img src="https://dev.azure.com/tudat-team/feedstock-builds/_apis/build/status/tudat-resources-feedstock?branchName=master&jobName=osx&configuration=osx_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64</td>
              <td>
                <a href="https://dev.azure.com/tudat-team/feedstock-builds/_build/latest?definitionId=4&branchName=master">
                  <img src="https://dev.azure.com/tudat-team/feedstock-builds/_apis/build/status/tudat-resources-feedstock?branchName=master&jobName=osx&configuration=osx_arm64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64</td>
              <td>
                <a href="https://dev.azure.com/tudat-team/feedstock-builds/_build/latest?definitionId=4&branchName=master">
                  <img src="https://dev.azure.com/tudat-team/feedstock-builds/_apis/build/status/tudat-resources-feedstock?branchName=master&jobName=win&configuration=win_64_" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
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
conda config --set channel_priority strict
```

Once the `tudat-team` channel has been enabled, `tudat-resources` can be installed with `conda`:

```
conda install tudat-resources
```

or with `mamba`:

```
mamba install tudat-resources
```

It is possible to list all of the versions of `tudat-resources` available on your platform with `conda`:

```
conda search tudat-resources --channel tudat-team
```

or with `mamba`:

```
mamba search tudat-resources --channel tudat-team
```

Alternatively, `mamba repoquery` may provide more information:

```
# Search all versions available on your platform:
mamba repoquery search tudat-resources --channel tudat-team

# List packages depending on `tudat-resources`:
mamba repoquery whoneeds tudat-resources --channel tudat-team

# List dependencies of `tudat-resources`:
mamba repoquery depends tudat-resources --channel tudat-team
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
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@DominicDirkx](https://github.com/DominicDirkx/)
* [@geoffreygarrett](https://github.com/geoffreygarrett/)

