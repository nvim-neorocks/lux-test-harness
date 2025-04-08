package = "dromozoa-commons"
version = "1.59-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-commons/archive/v1.59.tar.gz";
  file = "dromozoa-commons-1.59.tar.gz";
}
description = {
  summary = "Reusable Lua components";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-commons/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.commons.apply"] = "dromozoa/commons/apply.lua";
    ["dromozoa.commons.base16"] = "dromozoa/commons/base16.lua";
    ["dromozoa.commons.base64"] = "dromozoa/commons/base64.lua";
    ["dromozoa.commons.basename"] = "dromozoa/commons/basename.lua";
    ["dromozoa.commons.bitset"] = "dromozoa/commons/bitset.lua";
    ["dromozoa.commons.clone"] = "dromozoa/commons/clone.lua";
    ["dromozoa.commons.crypt"] = "dromozoa/commons/crypt.lua";
    ["dromozoa.commons.crypt_apache_md5"] = "dromozoa/commons/crypt_apache_md5.lua";
    ["dromozoa.commons.crypt_apache_sha1"] = "dromozoa/commons/crypt_apache_sha1.lua";
    ["dromozoa.commons.crypt_base64"] = "dromozoa/commons/crypt_base64.lua";
    ["dromozoa.commons.crypt_sha256"] = "dromozoa/commons/crypt_sha256.lua";
    ["dromozoa.commons.copy"] = "dromozoa/commons/copy.lua";
    ["dromozoa.commons.dirname"] = "dromozoa/commons/dirname.lua";
    ["dromozoa.commons.double"] = "dromozoa/commons/double.lua";
    ["dromozoa.commons.dumper"] = "dromozoa/commons/dumper.lua";
    ["dromozoa.commons.dumper_writer"] = "dromozoa/commons/dumper_writer.lua";
    ["dromozoa.commons.empty"] = "dromozoa/commons/empty.lua";
    ["dromozoa.commons.equal"] = "dromozoa/commons/equal.lua";
    ["dromozoa.commons.getmetafield"] = "dromozoa/commons/getmetafield.lua";
    ["dromozoa.commons.hash"] = "dromozoa/commons/hash.lua";
    ["dromozoa.commons.hash_table"] = "dromozoa/commons/hash_table.lua";
    ["dromozoa.commons.hash_table_impl"] = "dromozoa/commons/hash_table_impl.lua";
    ["dromozoa.commons.hash_table_pair"] = "dromozoa/commons/hash_table_pair.lua";
    ["dromozoa.commons.ipairs"] = "dromozoa/commons/ipairs.lua";
    ["dromozoa.commons.is_array"] = "dromozoa/commons/is_array.lua";
    ["dromozoa.commons.is_stable"] = "dromozoa/commons/is_stable.lua";
    ["dromozoa.commons.json"] = "dromozoa/commons/json.lua";
    ["dromozoa.commons.json_parser"] = "dromozoa/commons/json_parser.lua";
    ["dromozoa.commons.json_writer"] = "dromozoa/commons/json_writer.lua";
    ["dromozoa.commons.julian_day"] = "dromozoa/commons/julian_day.lua";
    ["dromozoa.commons.loadstring"] = "dromozoa/commons/loadstring.lua";
    ["dromozoa.commons.keys"] = "dromozoa/commons/keys.lua";
    ["dromozoa.commons.linked_hash_table"] = "dromozoa/commons/linked_hash_table.lua";
    ["dromozoa.commons.lua_version_num"] = "dromozoa/commons/lua_version_num.lua";
    ["dromozoa.commons.map"] = "dromozoa/commons/map.lua";
    ["dromozoa.commons.multimap"] = "dromozoa/commons/multimap.lua";
    ["dromozoa.commons.multimap_handle"] = "dromozoa/commons/multimap_handle.lua";
    ["dromozoa.commons.message_digest"] = "dromozoa/commons/message_digest.lua";
    ["dromozoa.commons.md5"] = "dromozoa/commons/md5.lua";
    ["dromozoa.commons.murmur_hash3"] = "dromozoa/commons/murmur_hash3.lua";
    ["dromozoa.commons.pack"] = "dromozoa/commons/pack.lua";
    ["dromozoa.commons.pairs"] = "dromozoa/commons/pairs.lua";
    ["dromozoa.commons.property_map"] = "dromozoa/commons/property_map.lua";
    ["dromozoa.commons.push"] = "dromozoa/commons/push.lua";
    ["dromozoa.commons.queue"] = "dromozoa/commons/queue.lua";
    ["dromozoa.commons.random_bytes"] = "dromozoa/commons/random_bytes.lua";
    ["dromozoa.commons.rb_tree"] = "dromozoa/commons/rb_tree.lua";
    ["dromozoa.commons.read_file"] = "dromozoa/commons/read_file.lua";
    ["dromozoa.commons.searchpath"] = "dromozoa/commons/searchpath.lua";
    ["dromozoa.commons.sequence"] = "dromozoa/commons/sequence.lua";
    ["dromozoa.commons.sequence_writer"] = "dromozoa/commons/sequence_writer.lua";
    ["dromozoa.commons.set"] = "dromozoa/commons/set.lua";
    ["dromozoa.commons.sha"] = "dromozoa/commons/sha.lua";
    ["dromozoa.commons.sha1"] = "dromozoa/commons/sha1.lua";
    ["dromozoa.commons.sha256"] = "dromozoa/commons/sha256.lua";
    ["dromozoa.commons.shell"] = "dromozoa/commons/shell.lua";
    ["dromozoa.commons.single"] = "dromozoa/commons/single.lua";
    ["dromozoa.commons.split"] = "dromozoa/commons/split.lua";
    ["dromozoa.commons.string_buffer"] = "dromozoa/commons/string_buffer.lua";
    ["dromozoa.commons.string_matcher"] = "dromozoa/commons/string_matcher.lua";
    ["dromozoa.commons.string_reader"] = "dromozoa/commons/string_reader.lua";
    ["dromozoa.commons.translate_range"] = "dromozoa/commons/translate_range.lua";
    ["dromozoa.commons.uint16"] = "dromozoa/commons/uint16.lua";
    ["dromozoa.commons.uint32"] = "dromozoa/commons/uint32.lua";
    ["dromozoa.commons.uint64"] = "dromozoa/commons/uint64.lua";
    ["dromozoa.commons.unpack"] = "dromozoa/commons/unpack.lua";
    ["dromozoa.commons.utf8"] = "dromozoa/commons/utf8.lua";
    ["dromozoa.commons.unix_time"] = "dromozoa/commons/unix_time.lua";
    ["dromozoa.commons.uri"] = "dromozoa/commons/uri.lua";
    ["dromozoa.commons.values"] = "dromozoa/commons/values.lua";
    ["dromozoa.commons.visit"] = "dromozoa/commons/visit.lua";
    ["dromozoa.commons.word_block"] = "dromozoa/commons/word_block.lua";
    ["dromozoa.commons.write_file"] = "dromozoa/commons/write_file.lua";
    ["dromozoa.commons.xml"] = "dromozoa/commons/xml.lua";
  };
}
