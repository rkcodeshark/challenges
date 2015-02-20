function revStr(v) {
    for (var i = 0, j = (v = String(v).split('')).length - 1; i < v.length >> 1; i++, j--) {
        v.tmp = v[i];
        v[i] = v[j];
        v[j] = v.tmp;
    }
    return v.join('');
}

// Usage:
revStr(123456789);
revStr("odd");
revStr("even");
revStr("foo Bar baz qux quux corge grault garply waldo fred plugh xyzzy thud");
