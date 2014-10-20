#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Goodie;

zci answer_type => "is_awesome_git_hub_username";
zci is_cached   => 1;

ddg_goodie_test(
	[qw(
		DDG::Goodie::IsAwesome::GitHubUsername
	)],
	'example query' => test_zci('query')
);

done_testing;
