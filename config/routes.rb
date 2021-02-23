Rails.application.routes.draw do
  devise_for :users
  root to: 'welcomes#index'
  resources :posts do
    collection do
      get "search_hokkaido","search_aomori","search_iwate",
          "search_akita","search_miyagi","search_yamagata",
          "search_fukushima","search_ibaraki","search_tochigi",
          "search_gunma","search_chiba","search_saitama",
          "search_tokyo","search_kanagawa","search_nigata",
          "search_toyama","search_ishikawa","search_fukui",
          "search_nagano","search_gifu","search_yamanashi",
          "search_shizuoka","search_aichi","search_shiga",
          "search_kyoto","search_hyogo","search_nara",
          "search_mie","search_osaka","search_wakayama",
          "search_tottori","search_shimane","search_okayama",
          "search_hiroshima","search_yamaguchi","search_kagawa",
          "search_ehime","search_tokushima","search_kochi",
          "search_fukuoka","search_saga","search_nagasaki",
          "search_oita","search_kumamoto","search_miyazaki",
          "search_kagoshima","search_okinawa","search",
          "search-ransack"
    end
  end
end
