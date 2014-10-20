package DDG::Goodie::IsAwesome::GitHubUsername;
# ABSTRACT: Write an abstract here
# Start at https://duck.co/duckduckhack/goodie_overview if you are new
# to instant answer development

use DDG::Goodie;

zci answer_type => "is_awesome_git_hub_username";
zci is_cached   => 1;

# Metadata.  See https://duck.co/duckduckhack/metadata for help in filling out this section.
name "IsAwesome GitHubUsername";
description "Succinct explanation of what this instant answer does";
primary_example_queries "first example query", "second example query";
secondary_example_queries "optional -- demonstrate any additional triggers";
# Uncomment and add a category
#category "";
# Uncomment and add a category
#topics "";
code_url "https://github.com/duckduckgo/zeroclickinfo-goodies/blob/master/lib/DDG/Goodie/IsAwesome/GitHubUsername.pm";
attribution github => ["GitHubAccount", "Friendly Name"],
            twitter => "twitterhandle";

# Triggers
triggers start => "duckduckhack githubusername";

# Handle statement
handle remainder => sub {

    if (length $_){
        return;
    } else {
        return "GitHubUsername is awesome and has successfully completed the DuckDuckHack Goodie tutorial";
    }
};

1;
