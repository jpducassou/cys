README
======

This project is the source code for <http://www.cys.com.uy/>, plus the code that converts it from Markdown format into HTML.
It is based in the work of petdance (Andy Lester) for his website <http://bobby-tables.com/>.

Repository layout
-----------------

* src/
    * page bodies in Markdown format
* tmpl/
    * templates in Template::Toolkit format
* htdocs/
    * static resources like images and styles
* t/
    * tests
* build/ (Not stored)
    * output
* conf/
    * Configuration goes here

Requirements
------------

GNU bash, make, gettext-runtime, gettext-tools.

Perl and additional CPAN modules.

For building:

* File::Slurp
* libintl-perl (for Locale::Messages, Locale::TextDomain)
* Locale::Maketext::Lexicon (for xgettext.pl)
* Template
* Text::Markdown

For testing:

* Test::HTML::Lint

Contributing page content
-------------------------

1. Modify templates or page bodies.
2. Run `make` to build the site and inspect the result in the `build` directory.
3. Run `make test` to check for HTML errors.
4. Commit/publish changes.


