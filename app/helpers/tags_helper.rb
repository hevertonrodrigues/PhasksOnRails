# Adicionando metodos em tempo real na Classe TagsHelper
module TagsHelper
	# Link de voltar
	def back_link(path)
		link_to '<i class="fa fa-long-arrow-left"></i> '.html_safe + t("site.back"), path, :class => 'btn btn-default'
	end

	# Link para adicionar
	def add_link(path)
		link_to '<i class="fa fa-plus"></i>'.html_safe, path, :class => 'btn btn-primary', :title => t('site.new')
	end

	# Link para visualizar
	def show_link(path)
		link_to '<i class="fa fa-search"></i>'.html_safe, path, :class => 'btn btn-info', :title => t('site.show')
	end

	# Link para editar
	def edit_link(method)
		link_to '<i class="fa fa-edit"></i>'.html_safe, method, :class => 'btn btn-success', :title => t('site.edit')
	end

	# Link para deletar
	def destroy_link(path)
		link_to '<i class="fa fa-times"></i>'.html_safe, path, method: :delete, data: { confirm: 'Are you sure?' }, :class => 'btn btn-danger', :title => t('site.destroy')
	end
end