#!/usr/bin/env perl

use strict;
use warnings;

my @CATEGORIES = qw/news shows history discography video photo/;

my %lines = (
    "news" => "[[%s|nopadding;380px|page-5232654_32673002]]",
    "shows" => "[[%s|nopadding;380px|page-5232654_32673056]]",
    "history" => "[[%s|nopadding;380px|page-5232654_32673129]]",
    "discography" => "[[%s|nopadding;380px|page-5232654_32673547]]",
    "video" => "[[%s|nopadding;380px|page-5232654_32673174]]",
    "photo" => "[[%s|nopadding;380px|http://vkontakte.ru/album-5232654_52045403]]",
);

my %links = (
    "news" =>
        "https://vk.com/photo-21874356_294364121",
    "shows" =>
        "https://vk.com/photo-21874356_294364120",
    "history" =>
        "https://vk.com/photo-21874356_294364119",
    "discography" =>
        "https://vk.com/photo-21874356_294364118",
    "video" =>
        "https://vk.com/photo-21874356_294364117",
    "photo" =>
        "https://vk.com/photo-21874356_294364123"
);

for my $category (@CATEGORIES) {
    if ($links{$category} =~ /https:\/\/vk.com\/(photo-[\d_]+)/) {
        $links{$category} = $1;
    }

    printf("$lines{$category}\n", $links{$category});
}

