---
layout : default
title : Блог Андрея Акиньшина / Теги
permalink: /ru/blog/tags/index.html
---
@model Pretzel.Logic.Templating.Context.PageContext

<h2>Теги</h2>
<div>
@foreach(var tag in Model.Site.Tags.OrderByDescending(c => c.Posts.Count()))
{
    var posts = tag.Posts.Distinct().ToList();
    if (posts.Count() > 0)
    {
        <h3 id="@tag.Name">@tag.Name</h3>
        <ul>
        @foreach(var post in posts)
        {
            <li><a href='@post.Url.Replace("index.html", "")'>@post.Title</a> <i>(@post.Date.ToString("dd MMMM yyyy", new System.Globalization.CultureInfo("ru-RU")))</i></li>
        }
        </ul>
    }
}
</div>
<hr />
<p>Подписаться: <a href="/ru/rss.xml">RSS</a> <a href="/ru/atom.xml">Atom</a></p>