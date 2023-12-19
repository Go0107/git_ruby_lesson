def convert_currency(amount, source_currency, target_currency, conversion_rates)
    # 関数を完成させてください
    if source_currency == target_currency
        puts amount
    else
        #　変換する倍率の計算
        rate = conversion_rates[target_currency] / conversion_rates[source_currency]
        # 変換元＊倍率
        puts amount * rate
    end
end

conversion_rates = {
  usd: 1.0,
  jpy: 110.0,
  eur: 0.8
}

convert_currency(100, :usd, :jpy, conversion_rates)