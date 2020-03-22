function serialize(model) {
    var res = "{ \"TEXT\": [\n";

    console.log("count: " + model.count);

    for(var i = 0; i < model.count; ++i) {
        res += "\n{\t";
        var e = model.get(i);
        res += "\"number\": \""   +　i + "\",\n\t";
        res += "\"name\": \""   +　e.name + "\",\n\t";
        res += "\"password\": \""   +　e.password + "\",\n\t";
        res += "\"time\": \"" + e.time + "\"\n\t";
        //The last one should not have the ending ","
        if ( i === model.count -1)
            res += "\n}";
        else
            res += "\n},";
    }

    res += "\n]\n}";

    console.log("res: " + res );
    return res;
}
