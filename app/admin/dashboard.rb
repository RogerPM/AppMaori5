ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do


    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
    section "Productos Recientes" do
    table_for Product.order("updated_at desc").limit(5) do
      column "Descripcion", :name do |product|
        link_to product.name, admin_product_path(product)
      end
      column "Stock Actual", :quantity
      column "Stock Minimo", :minimun_quantity
      column "Ultimos vendidos", :updated_at
    end
    strong { link_to "View All Products", admin_products_path }
  end


  end # content
end
