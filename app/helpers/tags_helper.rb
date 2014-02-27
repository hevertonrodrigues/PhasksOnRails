module TagsHelper
	# Link de voltar
	def back_link(path)
		link_to '<i class="fa fa-long-arrow-left"></i> '.html_safe + t("site.back"), path, :class => 'btn btn-default'
	end
end
