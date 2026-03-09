
	<% if $Title && $ShowTitle %>
		<% with $HeadingTag %>
				<{$Me} class="element-title">$Up.Title.XML</{$Me}>
		<% end_with %>
	<% end_if %>
    <% if $Elements %>
		<div class="grid-x grid-padding-x grid-padding-y {$Top.VerticalAlignClass}" data-listelement-count="$Elements.Elements.Count">
			<% loop $Elements.Elements %>
				<% if $Modal %>
					<div class="cell">
						<a href="#" data-remodal-target="modal-element-{$ID}" class="button" contenteditable="false"><% if $ButtonText %>$ButtonText<% else %>Click For Details<% end_if %></a>
					</div>
					<div class="remodal" data-remodal-options="hashTracking: false" data-remodal-id="modal-element-{$ID}">
						<button data-remodal-action="close" class="remodal-close"></button>
						<div class="element-modal">
								$Me
						</div>
					</div>
				<% else %>
					<div class="cell {$WidthClass}">{$Me}</div>
				<% end_if %>
			<% end_loop %>
		</div>
	<% end_if %>
