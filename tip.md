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

* Array型のcast (Array{Int,1} => Array{Any,1})
```
a = Array{Int, 1}
a = convert(Array{Any,1}, a)
```

* vcatの仕様
vcatはsrc => dstに1要素として結合する
juliaはArrayの中にArrayを入れられるので
```
[Any[ 0 0 0] [1 1 1]]
[[0 0 0] [1 1 1]]
```
という行列に似た表記が可能。
別のArrayにArrayを挿入するには、
```
a = [Any[1 2 3]]
b = [Any[4 5 6 7 8]]
a = vcat(a,b)
=========================
2-element Array{Array{Int64,2},1}:
[1 2 3]
[4 5 6 7 8]
```
となる。もし、Any型にしたければ、
```
convert(Array{Any},a)
```

* 配列の範囲
```
python [0:9] julia [1:10]
```
