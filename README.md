# BiTemporalDataModel で実装してみる

### ActiveRecord::Bitemporal を使ってみる
```log
id	name	bitemporal_id	valid_from	valid_to	transaction_from	transaction_to

# create
21	new	21	2023-11-26 04:06:30.912996	9999-12-31 00:00:00	2023-11-26 04:06:30.912996	9999-12-31 00:00:00

# update
21	new	21	2023-11-26 04:06:30.912996	9999-12-31 00:00:00	2023-11-26 04:06:30.912996	2023-11-26 04:07:15.434298
22	new	21	2023-11-26 04:06:30.912996	2023-11-26 04:07:15.434298	2023-11-26 04:07:15.434298	9999-12-31 00:00:00
23	new-updated	21	2023-11-26 04:07:15.434298	9999-12-31 00:00:00	2023-11-26 04:07:15.434298	9999-12-31 00:00:00

# destoy
21	new	21	2023-11-26 04:06:30.912996	9999-12-31 00:00:00	2023-11-26 04:06:30.912996	2023-11-26 04:07:15.434298
22	new	21	2023-11-26 04:06:30.912996	2023-11-26 04:07:15.434298	2023-11-26 04:07:15.434298	9999-12-31 00:00:00
23	new-updated	21	2023-11-26 04:07:15.434298	9999-12-31 00:00:00	2023-11-26 04:07:15.434298	2023-11-26 04:07:58.158317
24	new-updated	21	2023-11-26 04:07:15.434298	2023-11-26 04:07:58.158317	2023-11-26 04:07:58.158317	9999-12-31 00:00:00
```

- create
  - 1つ追加
    - valid_to, transaction_to に 9999-12-31 ... のデータが入る
    - bitemporal_id = id

- update
  - 最初のレコードが更新される
    - transaction_to に実行時間が入る
  - ２つ追加される
    - 更新前の状態で valid_to に更新日が入ったレコード
    - 更新後の状態で valid_to 9999-12-31 ... のレコード

- destroy
  - 最新のレコードが更新される
    - valid_to に実行時間が入る
  - 1つ追加される
    - valid_to に削除日が入ったレコードが追加
