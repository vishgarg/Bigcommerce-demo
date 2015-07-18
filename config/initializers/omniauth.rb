Rails.application.config.middleware.use OmniAuth::Builder do
  provider :bigcommerce, "a796d7nwww8fz77h3l4qhp7axsn8bpe", "7ahfar8emr3apilvvx2j1kehbsnksng",
           {
             scope: "store_v2_orders store_v2_products store_v2_customers store_v2_content store_v2_marketing store_v2_information_read_only users_basic_information store_v2_default",
             client_options: {
               site: 'https://login.bigcommerce.com'
             }
           }
end