# ![](https://raw.github.com/aptible/straptible/master/lib/straptible/rails/templates/public.api/icon-60px.png) Aptible::DocumentHelpers

Include `Aptible::DocumentHelpers` in your `Prawn::Document` for easy Aptible-styled PDF generation.

# Installation

Add `aptible-prawn-helpers` to your Gemfile

```
gem 'aptible-prawn-helpers'
  
```
and install the gem with `bundle install`.

# Usage

To load the helpers, just include the module in your `Prawn::Document` definition:

```
class AptibleDocument < Prawn::Document
  include Aptible::DocumentHelpers
end
```

[<img src="https://s.gravatar.com/avatar/9b58236204e844e3181e43e05ddb0809?s=60" style="border-radius: 50%;" alt="@sandersonet" />](https://github.com/sandersonet)
