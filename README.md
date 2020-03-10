# tv_magic
A toy project for penetration testing.
This code contains intentional bugs and security flaws.

**1. To get started and set up your development environment:**

    git clone https://github.com/bshand/tv_magic
    bundle install
    yarn install
    bin/rails db:create db:migrate db:seed
    bin/rails test

**2. Try running the rails server**

    bin/rails s
and point your browser to the application homepage, e.g. http://localhost:3000/

**3. Try to hack the server!**

If you're impatient, here's a ROT-13'd list of things to look out for:

    --- START OF ROT-13 BLOCK / FGNEG BS EBG-13 OYBPX ---
    Guvatf gb ybbx bhg sbe
    - N FDY vawrpgvba nggnpx
    - Na hafnsr trz svyr
    - Na UGZY vawrpgvba nggnpx
    - N pbqr onpxqbbe
    - Gur bevtvany cebqhpgvba frperg_xrl_onfr
    - Gur bevtva bs gur giz.ybt svyrf
    - N PFI vawrpgvba nggnpx
    --- END OF ROT-13 BLOCK / RAQ BS EBG-13 OYBPX ---

To decode the list above, paste it into a ROT-13 decoder, or run the following
shell command from inside your working copy (if you're sure it's safe!):

    sed -n '/  --- START/,/^--- END/p' README.md | tr 'A-Za-z' 'N-ZA-Mn-za-m'

Other things that this code doesn't really illustrate, but probably should
- A privilege escalation attack (e.g. using devise for user accounts)
- A user role authorization vulnerability (e.g. using cancancan for user roles)

**4. Find out more about Rails security**

Read the Ruby on Rails Security Cheatsheet
(https://cheatsheetseries.owasp.org/cheatsheets/Ruby_on_Rails_Cheatsheet.html),
with further reading at the end, and the Official Rails Security Guide
(https://guides.rubyonrails.org/security.html), use tools such as Brakeman
(https://brakemanscanner.org), `bundle audit` and rubocop
(https://github.com/rubocop-hq/rubocop) to identify common bugs in your code,
and use manual code review to identify and fix other vulnerabilities.
