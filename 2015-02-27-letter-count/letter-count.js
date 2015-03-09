function LetterCount(str) {
    let max = 1, word;
    String(str).toLowerCase().split(/[\W_]+/).forEach(function(w) {
        const index = {};
        for (let j in w) {
            const l = w[j];
            if ((++index[l] || (index[l] = 1)) > max)
                max = index[l], word = w;
        }
    });
    return word || null;
}
