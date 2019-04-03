# とりえず書いとけ
- [ ] 文字列の長さ取得
```
a = "aiueo"
python len(a) / julia length(a)
```

- [ ] 文字列の正規表現マッチ
```
a = "aiueo"
python re.search(r"regex", a) julia occursin(a, r"regex")
```

- [ ] 文字列の変更
```
#0.6.x => WARNING
replace(obj, "before", "after")

#1.x.x
replace(obj,"before" => "after")
```

- [ ] 型のcast(String => Int,Float...)
```
obj::afterType = parse(afterType, obj::BeforeType)
```

- [ ] Array型のcast (Array{Int,1} => Array{Any,1})
```
a = Array{Int, 1}
a = convert(Array{Any,1}, a)
```

- [ ] vcatの仕様
vcatはsrc => dstに1要素として結合する \n
juliaはArrayの中にArrayを入れられるので
```
[[0 0 0] [1 1 1]]
```
という行列に似た表記が可能。
別のArrayにArrayを挿入するには、
```
a = [Any[1 2 3]]
b = [Any[4 5 6 7 8]]
a = vcat(a,b)
=================================================
2-element Array{Array{Int64,2},1}:
[1 2 3]
[4 5 6 7 8]
```
となる。もし、Any型にしたければ、
```
convert(Array{Any},a)
```

- [ ] 配列の範囲
```
python [0:9] julia [1:10]
```

- [ ] 配列の要素の入れ替え
```
list[j], list[k] = list[k], list[j]
```
別に入れ替えのみでなくて、一括で変更できる
```
a = [0 1 2 3]
a[1], a[2] = a[3] , a[4]
```
とすると、
```
a = [2 3 2 3]
```

- [ ] localが必要にならない構文
```
if .... end
begin .... end
```
これ以外の構文はlocalの宣言が必要になるので、注意しなきゃいけない

- [ ] for文
for loop はpythonと少し違う
```
for i in 0;10
    println(i)
end
```
で、0 1 2 3 ... 10
in は柔軟で、
```
for i in 10
    println(i)
end
```
で、10

```
for i in 0;10;100
    println(i)
end
```
で、0 10 20...100

- [ ] Dict
```
a = Dict([("foo",1),("hoge","a")])
```
もしくは、
```
a = Dict("A" => 1, "b" => 2)
```

- [ ] Type
型の包含関係
```
function tracetype(t)
    print(t)
    while t != supertype(t)
        print("<:")
        t = supertype(t)
        print(t)
    end
    println()
end
```
これで入力した型のAny型までたどれる
JuliaはAny型が一番抽象度の高い型になっている。
また、抽象型と具体型が存在する。
具体型はtypeof()で返ってくる型。
抽象型は具体型のsuperset。



