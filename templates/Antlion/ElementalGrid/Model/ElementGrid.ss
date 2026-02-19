
	<% if $Title && $ShowTitle %>
		<% with $HeadingTag %>
				<{$Me} class="element-title">$Up.Title.XML</{$Me}>
		<% end_with %>
	<% end_if %>
    <% if $Elements %>
		<div class="grid-x grid-padding-x grid-padding-y {$Top.VerticalAlignClass}" data-listelement-count="$Elements.Elements.Count">
			<% loop $Elements.Elements %>
				<div class="cell {$WidthClass}">{$Me}</div>
			<% end_loop %>
		</div>
	<% end_if %>
