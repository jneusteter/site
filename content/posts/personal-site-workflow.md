# My Workflow using Static Site Generator

## Text Editor(VSCode)

I am using VSCode with live Markdown preview. I think of my text editor as the admin panel to my site. With [Markdown](http://https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one) extension I have live preview, snippets, keyboard shortcuts. And I use the [Spell Checker](http://https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker) extension, which can spell check text and my code.

## Nanoc

Nanoc is a Ruby Gem that compiles a site into static files for a web server. Anywhere on my pages, I can write erb code and Nanoc will execute it. So if I need to iterate over an array, I add this right inside my markdown.

```erb
  <% array.each do |item| %>
    # do stuff
  <% end %>
```

## Webpack

Still new to Webpack, its a great tool. I compile all my js files into one bundle.js file.

## Git

Site is fully version controlled. VSCode has really awesome interface to git. New posts are new branches, then when I am ready to publish I merge new branch into the master branch. As the master branch is always live.

## Github

From my VSCode, with a click of a button I send all commits to Github.

## Digital Ocean Droplet

I have a minimal Digital Ocean Droplet. 512MB Ram with single CPU.

## Cron Job with Git Hooks

Then I have a cron job polling Github every 10 minutes for any changes. If there are any changes, then there is an automated sequence of events. Listed below:

- git pull
- npm install
- npm run production
- bundle check || bundle install
- nanoc compile

## Static site Benefits

Takes minimal server resources. After reboot, my server uses only about 150MB of ram with everything running. There is almost no maintenance required.
