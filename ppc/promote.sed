# promote.sed
/(\*<</ {
        p
        r a.test
        a\
>>*)
}
/(\*<</,/>>\*)/d

/(\*\[\[/ {
        p
        r a.k
        a\
]]*)
}
/(\*\[\[/,/\]\]\*)/d
