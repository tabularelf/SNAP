struct = {
    a : true,
    b : false,
    c : undefined,
    d : 1/9,
    e : 15/100,
    array : [
        [[]],
        5,
        6,
        7,
        {
            struct : "struct!",
            nested : {
                nested : "nested!",
                array : [
                    "more",
                    "MORE",
                    "M O R E"
                ]
            }
        }
    ],
    test : "text!",
    test2 : "\"Hello world!\"",
    url : "https://www.jujuadams.com/",
    func : function() {},
    pointer: ptr(id),
    instance: id,
};

var _string = "{\"hello\" : \"world\", \"more\" : \"data\"}";
show_debug_message(SnapFromYAML(_string));

show_debug_message(SnapToYAML(struct, true));
yaml = SnapFromYAML(SnapToYAML(struct, true));
show_debug_message(SnapToYAML(yaml, true));
show_debug_message(SnapFromYAML(yaml, true, true));