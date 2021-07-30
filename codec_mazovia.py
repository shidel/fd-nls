from encodings.cp437 import decoding_map as cp437_decoding_map

import codecs

class Codec(codecs.Codec):

    def encode(self,input,errors='strict'):
        return codecs.charmap_encode(input,errors,encoding_map)

    def decode(self,input,errors='strict'):
        return codecs.charmap_decode(input,errors,decoding_table)

class IncrementalEncoder(codecs.IncrementalEncoder):
    def encode(self, input, final=False):
        return codecs.charmap_encode(input,self.errors,encoding_map)[0]

class IncrementalDecoder(codecs.IncrementalDecoder):
    def decode(self, input, final=False):
        return codecs.charmap_decode(input,self.errors,decoding_table)[0]

class StreamWriter(Codec,codecs.StreamWriter):
    pass

class StreamReader(Codec,codecs.StreamReader):
    pass

### Decoding Map (See https://en.wikipedia.org/wiki/Mazovia_encoding)
decoding_map = cp437_decoding_map
decoding_map.update({
    0x0086: 0x0105,     # LATIN SMALL LETTER A WITH OGONEK
    0x008d: 0x0107,     # LATIN SMALL LETTER C WITH ACUTE
    0x008f: 0x0104,     # LATIN CAPITAL LETTER A WITH OGONEK
    0x0090: 0x0118,     # LATIN CAPITAL LETTER E WITH OGONEK
    0x0091: 0x0119,     # LATIN SMALL LETTER E WITH OGONEK
    0x0092: 0x0142,     # LATIN SMALL LETTER L WITH STROKE
    0x0095: 0x0106,     # LATIN CAPITAL LETTER C WITH ACUTE
    0x0098: 0x015a,     # LATIN CAPITAL LETTER S WITH ACUTE
    0x009c: 0x0141,     # LATIN CAPITAL LETTER L WITH STROKE
    0x009e: 0x015b,     # LATIN SMALL LETTER S WITH ACUTE
    0x00a0: 0x0179,     # LATIN CAPITAL LETTER Z WITH ACUTE
    0x00a1: 0x017b,     # LATIN CAPITAL LETTER Z WITH DOT ABOVE
    0x00a3: 0x00d3,     # LATIN CAPITAL LETTER O WITH ACUTE
    0x00a4: 0x0144,     # ń
    0x00a5: 0x0143,     # Ń
    0x00a6: 0x017a,     # LATIN SMALL LETTER Z WITH ACUTE
    0x00a7: 0x017c,     # LATIN SMALL LETTER Z WITH DOT ABOVE
})

### Decoding Table
decoding_table = ''.join([chr(decoding_map[v]) for v in range(256)])

### Encoding Map
encoding_map = codecs.make_encoding_map(decoding_map)

def mazovia_search_function(encoding_name):
    return codecs.CodecInfo(name="mazovia",
        encode=Codec().encode,
        decode=Codec().decode,
        incrementalencoder=IncrementalEncoder,
        incrementaldecoder=IncrementalDecoder,
        streamreader=StreamReader,
        streamwriter=StreamWriter,
    )

codecs.register(mazovia_search_function)
