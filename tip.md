# とりえず書いとけ
* 文字列の長さ取得
```
a = "aiueo"
python len(a) / julia length(a)
```

* 文字列の正規表現マッチ
```
a = "aiueo"
python re.search(r"regex", a) julia occursin(a, r"regex")
```

* 文字列の変更
```
#0.6.x => WARNING
replace(obj, "before", "after")

#1.x.x
replace(obj,"before" => "after")
```

* 型のcast(String => Int,Float...)
```
obj::afterType = parse(afterType, obj::BeforeType)
```

* 配列の範囲
```
python [0:9] julia [1:10]
```
