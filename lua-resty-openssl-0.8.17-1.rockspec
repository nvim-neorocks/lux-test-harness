package = "lua-resty-openssl"
version = "0.8.17-1"
source = {
   url = "git+https://github.com/fffonion/lua-resty-openssl.git",
   tag = "0.8.17"
}
description = {
   detailed = "FFI-based OpenSSL binding for LuaJIT.",
   homepage = "https://github.com/fffonion/lua-resty-openssl",
   license = "BSD"
}
build = {
   type = "builtin",
   modules = {
      ["resty.openssl"] = "lib/resty/openssl.lua",
      ["resty.openssl.asn1"] = "lib/resty/openssl/asn1.lua",
      ["resty.openssl.auxiliary.bio"] = "lib/resty/openssl/auxiliary/bio.lua",
      ["resty.openssl.auxiliary.ctypes"] = "lib/resty/openssl/auxiliary/ctypes.lua",
      ["resty.openssl.auxiliary.jwk"] = "lib/resty/openssl/auxiliary/jwk.lua",
      ["resty.openssl.auxiliary.nginx"] = "lib/resty/openssl/auxiliary/nginx.lua",
      ["resty.openssl.auxiliary.nginx_c"] = "lib/resty/openssl/auxiliary/nginx_c.lua",
      ["resty.openssl.bn"] = "lib/resty/openssl/bn.lua",
      ["resty.openssl.cipher"] = "lib/resty/openssl/cipher.lua",
      ["resty.openssl.ctx"] = "lib/resty/openssl/ctx.lua",
      ["resty.openssl.dh"] = "lib/resty/openssl/dh.lua",
      ["resty.openssl.digest"] = "lib/resty/openssl/digest.lua",
      ["resty.openssl.ec"] = "lib/resty/openssl/ec.lua",
      ["resty.openssl.ecx"] = "lib/resty/openssl/ecx.lua",
      ["resty.openssl.err"] = "lib/resty/openssl/err.lua",
      ["resty.openssl.hmac"] = "lib/resty/openssl/hmac.lua",
      ["resty.openssl.include.asn1"] = "lib/resty/openssl/include/asn1.lua",
      ["resty.openssl.include.bio"] = "lib/resty/openssl/include/bio.lua",
      ["resty.openssl.include.bn"] = "lib/resty/openssl/include/bn.lua",
      ["resty.openssl.include.conf"] = "lib/resty/openssl/include/conf.lua",
      ["resty.openssl.include.crypto"] = "lib/resty/openssl/include/crypto.lua",
      ["resty.openssl.include.dh"] = "lib/resty/openssl/include/dh.lua",
      ["resty.openssl.include.ec"] = "lib/resty/openssl/include/ec.lua",
      ["resty.openssl.include.err"] = "lib/resty/openssl/include/err.lua",
      ["resty.openssl.include.evp"] = "lib/resty/openssl/include/evp.lua",
      ["resty.openssl.include.evp.cipher"] = "lib/resty/openssl/include/evp/cipher.lua",
      ["resty.openssl.include.evp.kdf"] = "lib/resty/openssl/include/evp/kdf.lua",
      ["resty.openssl.include.evp.mac"] = "lib/resty/openssl/include/evp/mac.lua",
      ["resty.openssl.include.evp.md"] = "lib/resty/openssl/include/evp/md.lua",
      ["resty.openssl.include.evp.pkey"] = "lib/resty/openssl/include/evp/pkey.lua",
      ["resty.openssl.include.hmac"] = "lib/resty/openssl/include/hmac.lua",
      ["resty.openssl.include.objects"] = "lib/resty/openssl/include/objects.lua",
      ["resty.openssl.include.ossl_typ"] = "lib/resty/openssl/include/ossl_typ.lua",
      ["resty.openssl.include.param"] = "lib/resty/openssl/include/param.lua",
      ["resty.openssl.include.pem"] = "lib/resty/openssl/include/pem.lua",
      ["resty.openssl.include.pkcs12"] = "lib/resty/openssl/include/pkcs12.lua",
      ["resty.openssl.include.provider"] = "lib/resty/openssl/include/provider.lua",
      ["resty.openssl.include.rand"] = "lib/resty/openssl/include/rand.lua",
      ["resty.openssl.include.rsa"] = "lib/resty/openssl/include/rsa.lua",
      ["resty.openssl.include.ssl"] = "lib/resty/openssl/include/ssl.lua",
      ["resty.openssl.include.stack"] = "lib/resty/openssl/include/stack.lua",
      ["resty.openssl.include.x509.altname"] = "lib/resty/openssl/include/x509/altname.lua",
      ["resty.openssl.include.x509.crl"] = "lib/resty/openssl/include/x509/crl.lua",
      ["resty.openssl.include.x509.csr"] = "lib/resty/openssl/include/x509/csr.lua",
      ["resty.openssl.include.x509.extension"] = "lib/resty/openssl/include/x509/extension.lua",
      ["resty.openssl.include.x509.init"] = "lib/resty/openssl/include/x509/init.lua",
      ["resty.openssl.include.x509.name"] = "lib/resty/openssl/include/x509/name.lua",
      ["resty.openssl.include.x509.revoked"] = "lib/resty/openssl/include/x509/revoked.lua",
      ["resty.openssl.include.x509_vfy"] = "lib/resty/openssl/include/x509_vfy.lua",
      ["resty.openssl.include.x509v3"] = "lib/resty/openssl/include/x509v3.lua",
      ["resty.openssl.kdf"] = "lib/resty/openssl/kdf.lua",
      ["resty.openssl.mac"] = "lib/resty/openssl/mac.lua",
      ["resty.openssl.objects"] = "lib/resty/openssl/objects.lua",
      ["resty.openssl.param"] = "lib/resty/openssl/param.lua",
      ["resty.openssl.pkcs12"] = "lib/resty/openssl/pkcs12.lua",
      ["resty.openssl.pkey"] = "lib/resty/openssl/pkey.lua",
      ["resty.openssl.provider"] = "lib/resty/openssl/provider.lua",
      ["resty.openssl.rand"] = "lib/resty/openssl/rand.lua",
      ["resty.openssl.rsa"] = "lib/resty/openssl/rsa.lua",
      ["resty.openssl.ssl"] = "lib/resty/openssl/ssl.lua",
      ["resty.openssl.ssl_ctx"] = "lib/resty/openssl/ssl_ctx.lua",
      ["resty.openssl.stack"] = "lib/resty/openssl/stack.lua",
      ["resty.openssl.version"] = "lib/resty/openssl/version.lua",
      ["resty.openssl.x509.altname"] = "lib/resty/openssl/x509/altname.lua",
      ["resty.openssl.x509.chain"] = "lib/resty/openssl/x509/chain.lua",
      ["resty.openssl.x509.crl"] = "lib/resty/openssl/x509/crl.lua",
      ["resty.openssl.x509.csr"] = "lib/resty/openssl/x509/csr.lua",
      ["resty.openssl.x509.extension"] = "lib/resty/openssl/x509/extension.lua",
      ["resty.openssl.x509.extension.dist_points"] = "lib/resty/openssl/x509/extension/dist_points.lua",
      ["resty.openssl.x509.extension.info_access"] = "lib/resty/openssl/x509/extension/info_access.lua",
      ["resty.openssl.x509.extensions"] = "lib/resty/openssl/x509/extensions.lua",
      ["resty.openssl.x509.init"] = "lib/resty/openssl/x509/init.lua",
      ["resty.openssl.x509.name"] = "lib/resty/openssl/x509/name.lua",
      ["resty.openssl.x509.revoked"] = "lib/resty/openssl/x509/revoked.lua",
      ["resty.openssl.x509.store"] = "lib/resty/openssl/x509/store.lua"
   }
}
