# perls

This is a repo with with docker based [Perlbrew](http://perlbrew.pl/).

You can use this image for simple runnig perl code in several perl versions.

Here is an example:

    docker run \
        --rm \
        bessarabov/perls \
        perlbrew exec perl -e 'print "$]\n"'
